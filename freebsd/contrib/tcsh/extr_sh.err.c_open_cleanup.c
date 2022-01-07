
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xclose (int) ;

void
open_cleanup(void *xptr)
{
    int *ptr;

    ptr = xptr;
    xclose(*ptr);
}
