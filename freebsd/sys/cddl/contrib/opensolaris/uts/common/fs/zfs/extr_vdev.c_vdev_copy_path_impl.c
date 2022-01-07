
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * vdev_path; scalar_t__ vdev_guid; } ;
typedef TYPE_1__ vdev_t ;
typedef int u_longlong_t ;


 void* spa_strdup (int *) ;
 int spa_strfree (int *) ;
 scalar_t__ strcmp (int *,int *) ;
 int zfs_dbgmsg (char*,int ,int *,...) ;

__attribute__((used)) static void
vdev_copy_path_impl(vdev_t *svd, vdev_t *dvd)
{
 if (svd->vdev_path != ((void*)0) && dvd->vdev_path != ((void*)0)) {
  if (strcmp(svd->vdev_path, dvd->vdev_path) != 0) {
   zfs_dbgmsg("vdev_copy_path: vdev %llu: path changed "
       "from '%s' to '%s'", (u_longlong_t)dvd->vdev_guid,
       dvd->vdev_path, svd->vdev_path);
   spa_strfree(dvd->vdev_path);
   dvd->vdev_path = spa_strdup(svd->vdev_path);
  }
 } else if (svd->vdev_path != ((void*)0)) {
  dvd->vdev_path = spa_strdup(svd->vdev_path);
  zfs_dbgmsg("vdev_copy_path: vdev %llu: path set to '%s'",
      (u_longlong_t)dvd->vdev_guid, dvd->vdev_path);
 }
}
