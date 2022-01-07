
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ zfs_prop_t ;
typedef scalar_t__ uint64_t ;
typedef int enforce_res_t ;
struct TYPE_5__ {int dd_pool; } ;
typedef TYPE_1__ dsl_dir_t ;
typedef int dsl_dataset_t ;
typedef int cred_t ;
struct TYPE_6__ {scalar_t__ dd_head_dataset_obj; } ;


 int ASSERT (int) ;
 int ENFORCE_ABOVE ;
 int ENFORCE_ALWAYS ;
 int ENFORCE_NEVER ;
 int FTAG ;
 scalar_t__ GLOBAL_ZONEID ;
 scalar_t__ ZFS_PROP_FILESYSTEM_LIMIT ;
 scalar_t__ ZFS_PROP_SNAPSHOT_LIMIT ;
 scalar_t__ crgetzoneid (int *) ;
 scalar_t__ dsl_dataset_hold_obj (int ,scalar_t__,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 scalar_t__ dsl_deleg_access_impl (int *,int ,int *) ;
 TYPE_3__* dsl_dir_phys (TYPE_1__*) ;
 int dsl_pool_config_held (int ) ;
 scalar_t__ dsl_prop_get_ds (int *,char*,int,int,scalar_t__*,int *) ;
 scalar_t__ jailed (int *) ;
 scalar_t__ secpolicy_zfs (int *) ;
 int zfs_prop_to_name (scalar_t__) ;

__attribute__((used)) static enforce_res_t
dsl_enforce_ds_ss_limits(dsl_dir_t *dd, zfs_prop_t prop, cred_t *cr)
{
 enforce_res_t enforce = ENFORCE_ALWAYS;
 uint64_t obj;
 dsl_dataset_t *ds;
 uint64_t zoned;

 ASSERT(prop == ZFS_PROP_FILESYSTEM_LIMIT ||
     prop == ZFS_PROP_SNAPSHOT_LIMIT);
 if ((obj = dsl_dir_phys(dd)->dd_head_dataset_obj) == 0)
  return (ENFORCE_ALWAYS);

 ASSERT(dsl_pool_config_held(dd->dd_pool));

 if (dsl_dataset_hold_obj(dd->dd_pool, obj, FTAG, &ds) != 0)
  return (ENFORCE_ALWAYS);

 if (dsl_prop_get_ds(ds, "zoned", 8, 1, &zoned, ((void*)0)) || zoned) {

  enforce = ENFORCE_ALWAYS;
 } else {
  if (dsl_deleg_access_impl(ds, zfs_prop_to_name(prop), cr) == 0)
   enforce = ENFORCE_ABOVE;
 }

 dsl_dataset_rele(ds, FTAG);
 return (enforce);
}
