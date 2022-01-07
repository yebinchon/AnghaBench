
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ zfs_prop_t ;
typedef scalar_t__ uint64_t ;
typedef int objset_t ;
typedef scalar_t__ enforce_res_t ;
struct TYPE_8__ {struct TYPE_8__* dd_parent; int dd_object; TYPE_3__* dd_pool; } ;
typedef TYPE_1__ dsl_dir_t ;
typedef int cred_t ;
typedef int count ;
struct TYPE_9__ {int * dp_meta_objset; } ;


 int ASSERT (int) ;
 int B_FALSE ;
 char* DD_FIELD_FILESYSTEM_COUNT ;
 char* DD_FIELD_SNAPSHOT_COUNT ;
 int EDQUOT ;
 scalar_t__ ENFORCE_ALWAYS ;
 scalar_t__ ENFORCE_NEVER ;
 scalar_t__ ENOENT ;
 int SET_ERROR (int ) ;
 scalar_t__ ZFS_PROP_FILESYSTEM_LIMIT ;
 scalar_t__ ZFS_PROP_SNAPSHOT_LIMIT ;
 int dsl_dir_is_zapified (TYPE_1__*) ;
 scalar_t__ dsl_enforce_ds_ss_limits (TYPE_1__*,scalar_t__,int *) ;
 int dsl_pool_config_held (TYPE_3__*) ;
 int dsl_prop_get_dd (TYPE_1__*,int ,int,int,scalar_t__*,int *,int ) ;
 scalar_t__ zap_lookup (int *,int ,char*,int,int,scalar_t__*) ;
 int zfs_prop_to_name (scalar_t__) ;

int
dsl_fs_ss_limit_check(dsl_dir_t *dd, uint64_t delta, zfs_prop_t prop,
    dsl_dir_t *ancestor, cred_t *cr)
{
 objset_t *os = dd->dd_pool->dp_meta_objset;
 uint64_t limit, count;
 char *count_prop;
 enforce_res_t enforce;
 int err = 0;

 ASSERT(dsl_pool_config_held(dd->dd_pool));
 ASSERT(prop == ZFS_PROP_FILESYSTEM_LIMIT ||
     prop == ZFS_PROP_SNAPSHOT_LIMIT);
 enforce = dsl_enforce_ds_ss_limits(dd, prop, cr);
 if (enforce == ENFORCE_NEVER)
  return (0);





 if (delta == 0)
  return (0);

 if (prop == ZFS_PROP_SNAPSHOT_LIMIT) {




  if (cr == ((void*)0))
   return (0);

  count_prop = DD_FIELD_SNAPSHOT_COUNT;
 } else {
  count_prop = DD_FIELD_FILESYSTEM_COUNT;
 }






 if (ancestor == dd)
  return (0);






 if (!dsl_dir_is_zapified(dd) || zap_lookup(os, dd->dd_object,
     count_prop, sizeof (count), 1, &count) == ENOENT)
  return (0);

 err = dsl_prop_get_dd(dd, zfs_prop_to_name(prop), 8, 1, &limit, ((void*)0),
     B_FALSE);
 if (err != 0)
  return (err);


 if (enforce == ENFORCE_ALWAYS && (count + delta) > limit)
  return (SET_ERROR(EDQUOT));

 if (dd->dd_parent != ((void*)0))
  err = dsl_fs_ss_limit_check(dd->dd_parent, delta, prop,
      ancestor, cr);

 return (err);
}
