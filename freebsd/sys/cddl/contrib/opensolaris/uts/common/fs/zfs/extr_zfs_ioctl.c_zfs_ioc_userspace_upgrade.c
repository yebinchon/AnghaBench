
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int z_vfs; int * z_os; } ;
typedef TYPE_1__ zfsvfs_t ;
struct TYPE_9__ {int zc_name; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int objset_t ;
typedef int dsl_dataset_t ;


 int FTAG ;
 int VFS_RELE (int ) ;
 int * dmu_objset_ds (int *) ;
 int dmu_objset_hold (int ,int ,int **) ;
 int dmu_objset_refresh_ownership (int *,int **,TYPE_1__*) ;
 int dmu_objset_rele (int *,int ) ;
 int dmu_objset_userspace_upgrade (int *) ;
 int dmu_objset_userused_enabled (int *) ;
 scalar_t__ getzfsvfs (int ,TYPE_1__**) ;
 int vfs_unbusy (int ) ;
 int zfs_resume_fs (TYPE_1__*,int *) ;
 int zfs_suspend_fs (TYPE_1__*) ;

__attribute__((used)) static int
zfs_ioc_userspace_upgrade(zfs_cmd_t *zc)
{
 objset_t *os;
 int error = 0;
 zfsvfs_t *zfsvfs;

 if (getzfsvfs(zc->zc_name, &zfsvfs) == 0) {
  if (!dmu_objset_userused_enabled(zfsvfs->z_os)) {





   dsl_dataset_t *ds, *newds;

   ds = dmu_objset_ds(zfsvfs->z_os);
   error = zfs_suspend_fs(zfsvfs);
   if (error == 0) {
    dmu_objset_refresh_ownership(ds, &newds,
        zfsvfs);
    error = zfs_resume_fs(zfsvfs, newds);
   }
  }
  if (error == 0)
   error = dmu_objset_userspace_upgrade(zfsvfs->z_os);



  vfs_unbusy(zfsvfs->z_vfs);

 } else {

  error = dmu_objset_hold(zc->zc_name, FTAG, &os);
  if (error != 0)
   return (error);

  error = dmu_objset_userspace_upgrade(os);
  dmu_objset_rele(os, FTAG);
 }

 return (error);
}
