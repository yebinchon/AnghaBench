
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int bzero (char*,int) ;
 int errno ;
 scalar_t__ heapbase ;
 scalar_t__ heapsize ;
 scalar_t__ maxheap ;
 int panic (char*) ;

char *
sbrk(int incr)
{
    char *ret;

    if (heapbase == 0)
     panic("No heap setup");

    if ((heapsize + incr) <= maxheap) {
 ret = (char *)heapbase + heapsize;
 bzero(ret, incr);
 heapsize += incr;
 return(ret);
    }
    errno = ENOMEM;
    return((char *)-1);
}
