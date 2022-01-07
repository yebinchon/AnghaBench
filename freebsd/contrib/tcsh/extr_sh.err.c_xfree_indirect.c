
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xfree (void*) ;

void
xfree_indirect(void *xptr)
{
    void **ptr;

    ptr = xptr;
    xfree(*ptr);
}
