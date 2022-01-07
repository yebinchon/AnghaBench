
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int objset_t ;
struct TYPE_3__ {int ds_prev; int ds_dir; } ;
typedef TYPE_1__ dsl_dataset_t ;


 scalar_t__ DS_IS_DEFER_DESTROY (int ) ;
 int FTAG ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 TYPE_1__* dmu_objset_ds (int *) ;
 int dmu_objset_hold (char const*,int ,int **) ;
 int dmu_objset_rele (int *,int ) ;
 int dsl_dataset_name (int ,char*) ;
 scalar_t__ dsl_dir_is_clone (int ) ;
 int zfs_unmount_snap (char*) ;

void
zfs_destroy_unmount_origin(const char *fsname)
{
 int error;
 objset_t *os;
 dsl_dataset_t *ds;

 error = dmu_objset_hold(fsname, FTAG, &os);
 if (error != 0)
  return;
 ds = dmu_objset_ds(os);
 if (dsl_dir_is_clone(ds->ds_dir) && DS_IS_DEFER_DESTROY(ds->ds_prev)) {
  char originname[ZFS_MAX_DATASET_NAME_LEN];
  dsl_dataset_name(ds->ds_prev, originname);
  dmu_objset_rele(os, FTAG);
  zfs_unmount_snap(originname);
 } else {
  dmu_objset_rele(os, FTAG);
 }
}
