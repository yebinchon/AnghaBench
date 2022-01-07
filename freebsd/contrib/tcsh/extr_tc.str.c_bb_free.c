
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bb_cleanup (void*) ;
 int xfree (void*) ;

void
bb_free(void *bb)
{
    bb_cleanup(bb);
    xfree(bb);
}
