
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int vdev_children; struct TYPE_5__** vdev_child; TYPE_1__* vdev_ops; } ;
typedef TYPE_2__ vdev_t ;
typedef int boolean_t ;
struct TYPE_4__ {char* vdev_op_type; int vdev_op_leaf; } ;


 int B_FALSE ;
 int B_TRUE ;
 int VDEV_TYPE_INDIRECT ;
 int VDEV_TYPE_MISSING ;
 int VDEV_TYPE_ROOT ;
 scalar_t__ strcmp (char*,int ) ;

boolean_t
vdev_is_bootable(vdev_t *vd)
{
 return (B_TRUE);
}
