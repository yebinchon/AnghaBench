
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * vdev_ops; } ;
typedef TYPE_1__ vdev_t ;
typedef int vdev_ops_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int vdev_hole_ops ;
 int vdev_indirect_ops ;
 int vdev_missing_ops ;
 int vdev_root_ops ;

boolean_t
vdev_is_concrete(vdev_t *vd)
{
 vdev_ops_t *ops = vd->vdev_ops;
 if (ops == &vdev_indirect_ops || ops == &vdev_hole_ops ||
     ops == &vdev_missing_ops || ops == &vdev_root_ops) {
  return (B_FALSE);
 } else {
  return (B_TRUE);
 }
}
