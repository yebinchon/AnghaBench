
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int vdev_children; struct TYPE_5__** vdev_child; int vdev_removed; int vdev_faulted; TYPE_1__* vdev_ops; } ;
typedef TYPE_2__ vdev_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_4__ {scalar_t__ vdev_op_leaf; } ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;

boolean_t
vdev_log_state_valid(vdev_t *vd)
{
 if (vd->vdev_ops->vdev_op_leaf && !vd->vdev_faulted &&
     !vd->vdev_removed)
  return (B_TRUE);

 for (int c = 0; c < vd->vdev_children; c++)
  if (vdev_log_state_valid(vd->vdev_child[c]))
   return (B_TRUE);

 return (B_FALSE);
}
