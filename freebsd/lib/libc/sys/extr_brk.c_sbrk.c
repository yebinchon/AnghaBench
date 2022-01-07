
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ curbrk ;
 int errno ;
 int initbrk () ;
 void* mvbrk (void*) ;

void *
sbrk(intptr_t incr)
{

 if (initbrk() == -1)
  return ((void *)-1);
 if ((incr > 0 && curbrk + incr < curbrk) ||
     (incr < 0 && curbrk + incr > curbrk)) {

  errno = EINVAL;
  return ((void *)-1);
 }
 return (mvbrk((void *)(curbrk + incr)));
}
