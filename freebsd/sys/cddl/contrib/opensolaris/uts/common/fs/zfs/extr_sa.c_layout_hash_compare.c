
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lot_instance; int lot_hash; } ;
typedef TYPE_1__ sa_lot_t ;


 int AVL_CMP (int ,int ) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int
layout_hash_compare(const void *arg1, const void *arg2)
{
 const sa_lot_t *node1 = (const sa_lot_t *)arg1;
 const sa_lot_t *node2 = (const sa_lot_t *)arg2;

 int cmp = AVL_CMP(node1->lot_hash, node2->lot_hash);
 if (likely(cmp))
  return (cmp);

 return (AVL_CMP(node1->lot_instance, node2->lot_instance));
}
