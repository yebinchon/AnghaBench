
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lot_num; } ;
typedef TYPE_1__ sa_lot_t ;


 int AVL_CMP (int ,int ) ;

__attribute__((used)) static int
layout_num_compare(const void *arg1, const void *arg2)
{
 const sa_lot_t *node1 = (const sa_lot_t *)arg1;
 const sa_lot_t *node2 = (const sa_lot_t *)arg2;

 return (AVL_CMP(node1->lot_num, node2->lot_num));
}
