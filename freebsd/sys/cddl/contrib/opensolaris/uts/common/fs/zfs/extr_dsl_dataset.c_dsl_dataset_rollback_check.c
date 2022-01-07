
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef scalar_t__ int64_t ;
typedef int dsl_pool_t ;
struct TYPE_15__ {scalar_t__ ds_dir; scalar_t__ ds_object; scalar_t__ ds_quota; int ds_reserved; struct TYPE_15__* ds_prev; scalar_t__ ds_is_snapshot; } ;
typedef TYPE_1__ dsl_dataset_t ;
struct TYPE_16__ {int ddra_owner; int * ddra_tosnap; int * ddra_fsname; } ;
typedef TYPE_2__ dsl_dataset_rollback_arg_t ;
struct TYPE_17__ {scalar_t__ tx_txg; } ;
typedef TYPE_3__ dmu_tx_t ;
struct TYPE_19__ {scalar_t__ ds_prev_snap_txg; scalar_t__ ds_referenced_bytes; int ds_unique_bytes; } ;
struct TYPE_18__ {scalar_t__ dd_origin_obj; } ;


 int ASSERT (scalar_t__) ;
 int EAGAIN ;
 int EDQUOT ;
 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int ENOSPC ;
 int ESRCH ;
 int EXDEV ;
 int FTAG ;
 scalar_t__ MIN (int ,int ) ;
 int SET_ERROR (int ) ;
 int TRUE ;
 scalar_t__ TXG_INITIAL ;
 int ZFS_PROP_CREATETXG ;
 scalar_t__ dmu_tx_is_syncing (TYPE_3__*) ;
 int * dmu_tx_pool (TYPE_3__*) ;
 int dsl_dataset_handoff_check (TYPE_1__*,int ,TYPE_3__*) ;
 int dsl_dataset_hold (int *,int *,int ,TYPE_1__**) ;
 TYPE_8__* dsl_dataset_phys (TYPE_1__*) ;
 int dsl_dataset_rele (TYPE_1__*,int ) ;
 scalar_t__ dsl_dir_is_clone (scalar_t__) ;
 TYPE_5__* dsl_dir_phys (scalar_t__) ;
 scalar_t__ dsl_dir_space_available (scalar_t__,int *,int ,int ) ;
 int dsl_get_bookmarks_impl (TYPE_1__*,int *,int *) ;
 int fnvlist_add_boolean (int *,int ) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int * fnvlist_lookup_nvlist (int ,int ) ;
 scalar_t__ fnvlist_lookup_uint64 (int *,char*) ;
 int fnvpair_value_nvlist (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int zfs_prop_to_name (int ) ;

int
dsl_dataset_rollback_check(void *arg, dmu_tx_t *tx)
{
 dsl_dataset_rollback_arg_t *ddra = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dataset_t *ds;
 int64_t unused_refres_delta;
 int error;

 error = dsl_dataset_hold(dp, ddra->ddra_fsname, FTAG, &ds);
 if (error != 0)
  return (error);


 if (ds->ds_is_snapshot) {
  dsl_dataset_rele(ds, FTAG);
  return (SET_ERROR(EINVAL));
 }


 if (dsl_dataset_phys(ds)->ds_prev_snap_txg < TXG_INITIAL) {
  dsl_dataset_rele(ds, FTAG);
  return (SET_ERROR(ESRCH));
 }







 if (dmu_tx_is_syncing(tx) &&
     dsl_dataset_phys(ds)->ds_prev_snap_txg >= tx->tx_txg) {
  dsl_dataset_rele(ds, FTAG);
  return (SET_ERROR(EAGAIN));
 }





 if (ddra->ddra_tosnap != ((void*)0)) {
  dsl_dataset_t *snapds;


  error = dsl_dataset_hold(dp, ddra->ddra_tosnap, FTAG, &snapds);
  if (error != 0) {
   if (error == ENOENT || error == EXDEV)
    error = SET_ERROR(ESRCH);
   dsl_dataset_rele(ds, FTAG);
   return (error);
  }
  ASSERT(snapds->ds_is_snapshot);


  if (snapds != ds->ds_prev) {





   if (snapds->ds_dir == ds->ds_dir ||
       (dsl_dir_is_clone(ds->ds_dir) &&
       dsl_dir_phys(ds->ds_dir)->dd_origin_obj ==
       snapds->ds_object)) {
    error = SET_ERROR(EEXIST);
   } else {
    error = SET_ERROR(ESRCH);
   }
   dsl_dataset_rele(snapds, FTAG);
   dsl_dataset_rele(ds, FTAG);
   return (error);
  }
  dsl_dataset_rele(snapds, FTAG);
 }


 nvlist_t *proprequest = fnvlist_alloc();
 fnvlist_add_boolean(proprequest, zfs_prop_to_name(ZFS_PROP_CREATETXG));
 nvlist_t *bookmarks = fnvlist_alloc();
 error = dsl_get_bookmarks_impl(ds, proprequest, bookmarks);
 fnvlist_free(proprequest);
 if (error != 0) {
  dsl_dataset_rele(ds, FTAG);
  return (error);
 }
 for (nvpair_t *pair = nvlist_next_nvpair(bookmarks, ((void*)0));
     pair != ((void*)0); pair = nvlist_next_nvpair(bookmarks, pair)) {
  nvlist_t *valuenv =
      fnvlist_lookup_nvlist(fnvpair_value_nvlist(pair),
      zfs_prop_to_name(ZFS_PROP_CREATETXG));
  uint64_t createtxg = fnvlist_lookup_uint64(valuenv, "value");
  if (createtxg > dsl_dataset_phys(ds)->ds_prev_snap_txg) {
   fnvlist_free(bookmarks);
   dsl_dataset_rele(ds, FTAG);
   return (SET_ERROR(EEXIST));
  }
 }
 fnvlist_free(bookmarks);

 error = dsl_dataset_handoff_check(ds, ddra->ddra_owner, tx);
 if (error != 0) {
  dsl_dataset_rele(ds, FTAG);
  return (error);
 }





 if (ds->ds_quota != 0 &&
     dsl_dataset_phys(ds->ds_prev)->ds_referenced_bytes > ds->ds_quota) {
  dsl_dataset_rele(ds, FTAG);
  return (SET_ERROR(EDQUOT));
 }
 unused_refres_delta = (int64_t)MIN(ds->ds_reserved,
     dsl_dataset_phys(ds)->ds_unique_bytes);

 if (unused_refres_delta > 0 &&
     unused_refres_delta >
     dsl_dir_space_available(ds->ds_dir, ((void*)0), 0, TRUE)) {
  dsl_dataset_rele(ds, FTAG);
  return (SET_ERROR(ENOSPC));
 }

 dsl_dataset_rele(ds, FTAG);
 return (0);
}
