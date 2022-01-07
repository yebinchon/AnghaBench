
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vdev_ashift; scalar_t__ vdev_physical_ashift; struct TYPE_3__* vdev_top; } ;
typedef TYPE_1__ vdev_t ;


 scalar_t__ MAX (int ,scalar_t__) ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int zfs_max_auto_ashift ;
 int zfs_min_auto_ashift ;

void
vdev_ashift_optimize(vdev_t *vd)
{
 if (vd == vd->vdev_top) {
  if (vd->vdev_ashift < vd->vdev_physical_ashift) {
   vd->vdev_ashift = MIN(
       MAX(zfs_max_auto_ashift, vd->vdev_ashift),
       MAX(zfs_min_auto_ashift, vd->vdev_physical_ashift));
  } else {







   vd->vdev_ashift = MAX(zfs_min_auto_ashift,
       vd->vdev_ashift);
  }
 }
}
