
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ vdev_leaf_zap; scalar_t__ vdev_top_zap; size_t vdev_children; struct TYPE_7__** vdev_child; struct TYPE_7__* vdev_top; TYPE_2__* vdev_ops; int vdev_removing; } ;
typedef TYPE_1__ vdev_t ;
typedef size_t uint64_t ;
typedef int dmu_tx_t ;
struct TYPE_8__ {scalar_t__ vdev_op_leaf; } ;


 void* vdev_create_link_zap (TYPE_1__*,int *) ;
 TYPE_2__ vdev_hole_ops ;
 TYPE_2__ vdev_missing_ops ;
 TYPE_2__ vdev_root_ops ;

void
vdev_construct_zaps(vdev_t *vd, dmu_tx_t *tx)
{
 if (vd->vdev_ops != &vdev_hole_ops &&
     vd->vdev_ops != &vdev_missing_ops &&
     vd->vdev_ops != &vdev_root_ops &&
     !vd->vdev_top->vdev_removing) {
  if (vd->vdev_ops->vdev_op_leaf && vd->vdev_leaf_zap == 0) {
   vd->vdev_leaf_zap = vdev_create_link_zap(vd, tx);
  }
  if (vd == vd->vdev_top && vd->vdev_top_zap == 0) {
   vd->vdev_top_zap = vdev_create_link_zap(vd, tx);
  }
 }
 for (uint64_t i = 0; i < vd->vdev_children; i++) {
  vdev_construct_zaps(vd->vdev_child[i], tx);
 }
}
