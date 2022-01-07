
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {char* zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;
typedef int dsl_pool_t ;
struct TYPE_13__ {int dd_pool; } ;
typedef TYPE_2__ dsl_dir_t ;
struct TYPE_14__ {TYPE_2__* ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
typedef int cred_t ;
struct TYPE_15__ {int dd_origin_obj; } ;


 int FTAG ;
 int ZFS_DELEG_PERM_MOUNT ;
 int ZFS_DELEG_PERM_PROMOTE ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int dsl_dataset_hold (int *,char*,int ,TYPE_3__**) ;
 int dsl_dataset_hold_obj (int ,int ,int ,TYPE_3__**) ;
 int dsl_dataset_name (TYPE_3__*,char*) ;
 int dsl_dataset_rele (TYPE_3__*,int ) ;
 TYPE_6__* dsl_dir_phys (TYPE_2__*) ;
 int dsl_pool_hold (char*,int ,int **) ;
 int dsl_pool_rele (int *,int ) ;
 int zfs_secpolicy_write_perms (char*,int ,int *) ;
 int zfs_secpolicy_write_perms_ds (char*,TYPE_3__*,int ,int *) ;

__attribute__((used)) static int
zfs_secpolicy_promote(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
 dsl_pool_t *dp;
 dsl_dataset_t *clone;
 int error;

 error = zfs_secpolicy_write_perms(zc->zc_name,
     ZFS_DELEG_PERM_PROMOTE, cr);
 if (error != 0)
  return (error);

 error = dsl_pool_hold(zc->zc_name, FTAG, &dp);
 if (error != 0)
  return (error);

 error = dsl_dataset_hold(dp, zc->zc_name, FTAG, &clone);

 if (error == 0) {
  char parentname[ZFS_MAX_DATASET_NAME_LEN];
  dsl_dataset_t *origin = ((void*)0);
  dsl_dir_t *dd;
  dd = clone->ds_dir;

  error = dsl_dataset_hold_obj(dd->dd_pool,
      dsl_dir_phys(dd)->dd_origin_obj, FTAG, &origin);
  if (error != 0) {
   dsl_dataset_rele(clone, FTAG);
   dsl_pool_rele(dp, FTAG);
   return (error);
  }

  error = zfs_secpolicy_write_perms_ds(zc->zc_name, clone,
      ZFS_DELEG_PERM_MOUNT, cr);

  dsl_dataset_name(origin, parentname);
  if (error == 0) {
   error = zfs_secpolicy_write_perms_ds(parentname, origin,
       ZFS_DELEG_PERM_PROMOTE, cr);
  }
  dsl_dataset_rele(clone, FTAG);
  dsl_dataset_rele(origin, FTAG);
 }
 dsl_pool_rele(dp, FTAG);
 return (error);
}
