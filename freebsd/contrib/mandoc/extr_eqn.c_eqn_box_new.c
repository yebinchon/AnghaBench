
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eqn_box {int expectargs; } ;


 int UINT_MAX ;
 struct eqn_box* mandoc_calloc (int,int) ;

struct eqn_box *
eqn_box_new(void)
{
 struct eqn_box *bp;

 bp = mandoc_calloc(1, sizeof(*bp));
 bp->expectargs = UINT_MAX;
 return bp;
}
