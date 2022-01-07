
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int blkfree (int **) ;
 int xfree (int ***) ;

void
blk_indirect_cleanup(void *xptr)
{
    Char ***ptr;

    ptr = xptr;
    blkfree(*ptr);
    xfree(ptr);
}
