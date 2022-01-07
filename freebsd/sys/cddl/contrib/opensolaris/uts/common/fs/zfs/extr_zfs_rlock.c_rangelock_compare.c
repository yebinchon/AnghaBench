
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lr_offset; } ;
typedef TYPE_1__ locked_range_t ;


 int AVL_CMP (int ,int ) ;

__attribute__((used)) static int
rangelock_compare(const void *arg1, const void *arg2)
{
 const locked_range_t *rl1 = (const locked_range_t *)arg1;
 const locked_range_t *rl2 = (const locked_range_t *)arg2;

 return (AVL_CMP(rl1->lr_offset, rl2->lr_offset));
}
