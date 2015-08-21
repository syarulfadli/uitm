## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## this function is to calculate inverse for square matrix
makeCacheMatrix <- function(x = matrix()){
  m<-NULL ##inverse start as null
  set<-function(y){
    x<<-y
    m<<-NULL 
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
      setmatrix=setmatrix,
      getmatrix=getmatrix)
       
}


## Write a short comment describing this function

##this function is to calculate inverse
##if inverse is exist, it wil simply return it value
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  #calculating inverse
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}


source("cachematrix.R")
a<- makeCacheMatrix()
a$set(matrix(1:4,2,2))
cacheSolve(a)

