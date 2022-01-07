
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 size_t MUL_NO_OVERFLOW ;
 size_t SIZE_MAX ;
 int errno ;
 void* realloc (void*,size_t) ;

void *
reallocarray(void *optr, size_t nmemb, size_t size)
{

 if ((nmemb >= MUL_NO_OVERFLOW || size >= MUL_NO_OVERFLOW) &&
     nmemb > 0 && SIZE_MAX / nmemb < size) {
  errno = ENOMEM;
  return (((void*)0));
 }
 return (realloc(optr, size * nmemb));
}
