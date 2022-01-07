
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int dsl_pool_t ;
struct TYPE_9__ {int dd_pool; scalar_t__ dd_parent; int dd_lock; } ;
typedef TYPE_1__ dsl_dir_t ;
struct TYPE_10__ {int ddsqra_value; int ddsqra_source; int ddsqra_name; } ;
typedef TYPE_2__ dsl_dir_set_qr_arg_t ;
struct TYPE_11__ {TYPE_1__* ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_12__ {scalar_t__ dd_used_bytes; scalar_t__ dd_reserved; scalar_t__ dd_quota; } ;


 int ENOSPC ;
 int FALSE ;
 int FTAG ;
 scalar_t__ MAX (scalar_t__,scalar_t__) ;
 int SET_ERROR (int ) ;
 int ZFS_PROP_RESERVATION ;
 int ZFS_SPACE_CHECK_NORMAL ;
 int dmu_tx_is_syncing (int *) ;
 int * dmu_tx_pool (int *) ;
 int dsl_dataset_hold (int *,int ,int ,TYPE_3__**) ;
 int dsl_dataset_rele (TYPE_3__*,int ) ;
 TYPE_5__* dsl_dir_phys (TYPE_1__*) ;
 scalar_t__ dsl_dir_space_available (scalar_t__,int *,int ,int ) ;
 scalar_t__ dsl_pool_adjustedsize (int ,int ) ;
 int dsl_prop_predict (TYPE_1__*,int ,int ,int ,scalar_t__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfs_prop_to_name (int ) ;

int
dsl_dir_set_reservation_check(void *arg, dmu_tx_t *tx)
{
 dsl_dir_set_qr_arg_t *ddsqra = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dataset_t *ds;
 dsl_dir_t *dd;
 uint64_t newval, used, avail;
 int error;

 error = dsl_dataset_hold(dp, ddsqra->ddsqra_name, FTAG, &ds);
 if (error != 0)
  return (error);
 dd = ds->ds_dir;





 if (!dmu_tx_is_syncing(tx)) {
  dsl_dataset_rele(ds, FTAG);
  return (0);
 }

 error = dsl_prop_predict(ds->ds_dir,
     zfs_prop_to_name(ZFS_PROP_RESERVATION),
     ddsqra->ddsqra_source, ddsqra->ddsqra_value, &newval);
 if (error != 0) {
  dsl_dataset_rele(ds, FTAG);
  return (error);
 }

 mutex_enter(&dd->dd_lock);
 used = dsl_dir_phys(dd)->dd_used_bytes;
 mutex_exit(&dd->dd_lock);

 if (dd->dd_parent) {
  avail = dsl_dir_space_available(dd->dd_parent,
      ((void*)0), 0, FALSE);
 } else {
  avail = dsl_pool_adjustedsize(dd->dd_pool,
      ZFS_SPACE_CHECK_NORMAL) - used;
 }

 if (MAX(used, newval) > MAX(used, dsl_dir_phys(dd)->dd_reserved)) {
  uint64_t delta = MAX(used, newval) -
      MAX(used, dsl_dir_phys(dd)->dd_reserved);

  if (delta > avail ||
      (dsl_dir_phys(dd)->dd_quota > 0 &&
      newval > dsl_dir_phys(dd)->dd_quota))
   error = SET_ERROR(ENOSPC);
 }

 dsl_dataset_rele(ds, FTAG);
 return (error);
}
