
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ vs_aux; } ;
struct TYPE_14__ {scalar_t__ vdev_children; scalar_t__ vdev_state; struct TYPE_14__* vdev_parent; TYPE_2__* vdev_ops; TYPE_1__ vdev_stat; scalar_t__ vdev_islog; struct TYPE_14__** vdev_child; TYPE_4__* vdev_spa; } ;
typedef TYPE_3__ vdev_t ;
struct TYPE_15__ {TYPE_3__* spa_root_vdev; } ;
typedef TYPE_4__ spa_t ;
struct TYPE_13__ {int (* vdev_op_state_change ) (TYPE_3__*,int,int) ;} ;


 int B_FALSE ;
 scalar_t__ VDEV_AUX_CORRUPT_DATA ;
 scalar_t__ VDEV_STATE_CANT_OPEN ;
 scalar_t__ VDEV_STATE_DEGRADED ;
 scalar_t__ spa_writeable (TYPE_4__*) ;
 int stub1 (TYPE_3__*,int,int) ;
 int vdev_is_concrete (TYPE_3__*) ;
 int vdev_readable (TYPE_3__*) ;
 int vdev_set_state (TYPE_3__*,int ,scalar_t__,scalar_t__) ;
 int vdev_writeable (TYPE_3__*) ;

void
vdev_propagate_state(vdev_t *vd)
{
 spa_t *spa = vd->vdev_spa;
 vdev_t *rvd = spa->spa_root_vdev;
 int degraded = 0, faulted = 0;
 int corrupted = 0;
 vdev_t *child;

 if (vd->vdev_children > 0) {
  for (int c = 0; c < vd->vdev_children; c++) {
   child = vd->vdev_child[c];





   if (!vdev_is_concrete(child))
    continue;

   if (!vdev_readable(child) ||
       (!vdev_writeable(child) && spa_writeable(spa))) {





    if (child->vdev_islog && vd == rvd)
     degraded++;
    else
     faulted++;
   } else if (child->vdev_state <= VDEV_STATE_DEGRADED) {
    degraded++;
   }

   if (child->vdev_stat.vs_aux == VDEV_AUX_CORRUPT_DATA)
    corrupted++;
  }

  vd->vdev_ops->vdev_op_state_change(vd, faulted, degraded);







  if (corrupted && vd == rvd &&
      rvd->vdev_state == VDEV_STATE_CANT_OPEN)
   vdev_set_state(rvd, B_FALSE, VDEV_STATE_CANT_OPEN,
       VDEV_AUX_CORRUPT_DATA);
 }

 if (vd->vdev_parent)
  vdev_propagate_state(vd->vdev_parent);
}
