
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ub_timestamp; int ub_txg; } ;
typedef TYPE_1__ uberblock_t ;


 int AVL_CMP (int ,int ) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int
vdev_uberblock_compare(const uberblock_t *ub1, const uberblock_t *ub2)
{
 int cmp = AVL_CMP(ub1->ub_txg, ub2->ub_txg);
 if (likely(cmp))
  return (cmp);

 return (AVL_CMP(ub1->ub_timestamp, ub2->ub_timestamp));
}
