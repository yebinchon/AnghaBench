
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {size_t vdev_children; int vdev_spa; TYPE_1__* vdev_ops; struct TYPE_9__** vdev_child; } ;
typedef TYPE_2__ vdev_t ;
typedef size_t uint64_t ;
struct TYPE_8__ {scalar_t__ vdev_op_leaf; } ;


 int ESC_ZFS_VDEV_CHECK ;
 int spa_event_notify (int ,TYPE_2__*,int *,int ) ;
 scalar_t__ vdev_is_concrete (TYPE_2__*) ;
 scalar_t__ vdev_is_dead (TYPE_2__*) ;
 int zfs_post_autoreplace (int ,TYPE_2__*) ;

__attribute__((used)) static void
spa_check_removed(vdev_t *vd)
{
 for (uint64_t c = 0; c < vd->vdev_children; c++)
  spa_check_removed(vd->vdev_child[c]);

 if (vd->vdev_ops->vdev_op_leaf && vdev_is_dead(vd) &&
     vdev_is_concrete(vd)) {
  zfs_post_autoreplace(vd->vdev_spa, vd);
  spa_event_notify(vd->vdev_spa, vd, ((void*)0), ESC_ZFS_VDEV_CHECK);
 }
}
