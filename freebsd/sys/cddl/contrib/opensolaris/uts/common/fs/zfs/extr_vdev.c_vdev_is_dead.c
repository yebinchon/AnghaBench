
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vdev_state; int * vdev_ops; } ;
typedef TYPE_1__ vdev_t ;
typedef int boolean_t ;


 scalar_t__ VDEV_STATE_DEGRADED ;
 int vdev_hole_ops ;
 int vdev_missing_ops ;

boolean_t
vdev_is_dead(vdev_t *vd)
{







 return (vd->vdev_state < VDEV_STATE_DEGRADED ||
     vd->vdev_ops == &vdev_hole_ops ||
     vd->vdev_ops == &vdev_missing_ops);
}
