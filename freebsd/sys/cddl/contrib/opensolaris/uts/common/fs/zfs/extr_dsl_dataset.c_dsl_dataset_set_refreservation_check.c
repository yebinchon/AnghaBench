
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_12__ {int dp_spa; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_13__ {scalar_t__ ds_reserved; scalar_t__ ds_quota; int ds_dir; int ds_lock; scalar_t__ ds_is_snapshot; } ;
typedef TYPE_2__ dsl_dataset_t ;
struct TYPE_14__ {int ddsqra_value; int ddsqra_source; int ddsqra_name; } ;
typedef TYPE_3__ dsl_dataset_set_qr_arg_t ;
typedef int dmu_tx_t ;
struct TYPE_15__ {scalar_t__ ds_unique_bytes; } ;


 int B_TRUE ;
 int DS_UNIQUE_IS_ACCURATE (TYPE_2__*) ;
 int EINVAL ;
 int ENOSPC ;
 int ENOTSUP ;
 int FTAG ;
 scalar_t__ MAX (scalar_t__,scalar_t__) ;
 int SET_ERROR (int ) ;
 scalar_t__ SPA_VERSION_REFRESERVATION ;
 int ZFS_PROP_REFRESERVATION ;
 int dmu_tx_is_syncing (int *) ;
 TYPE_1__* dmu_tx_pool (int *) ;
 int dsl_dataset_hold (TYPE_1__*,int ,int ,TYPE_2__**) ;
 TYPE_6__* dsl_dataset_phys (TYPE_2__*) ;
 int dsl_dataset_recalc_head_uniq (TYPE_2__*) ;
 int dsl_dataset_rele (TYPE_2__*,int ) ;
 scalar_t__ dsl_dir_space_available (int ,int *,int ,int ) ;
 int dsl_prop_predict (int ,int ,int ,int ,scalar_t__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ spa_version (int ) ;
 int zfs_prop_to_name (int ) ;

__attribute__((used)) static int
dsl_dataset_set_refreservation_check(void *arg, dmu_tx_t *tx)
{
 dsl_dataset_set_qr_arg_t *ddsqra = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dataset_t *ds;
 int error;
 uint64_t newval, unique;

 if (spa_version(dp->dp_spa) < SPA_VERSION_REFRESERVATION)
  return (SET_ERROR(ENOTSUP));

 error = dsl_dataset_hold(dp, ddsqra->ddsqra_name, FTAG, &ds);
 if (error != 0)
  return (error);

 if (ds->ds_is_snapshot) {
  dsl_dataset_rele(ds, FTAG);
  return (SET_ERROR(EINVAL));
 }

 error = dsl_prop_predict(ds->ds_dir,
     zfs_prop_to_name(ZFS_PROP_REFRESERVATION),
     ddsqra->ddsqra_source, ddsqra->ddsqra_value, &newval);
 if (error != 0) {
  dsl_dataset_rele(ds, FTAG);
  return (error);
 }





 if (!dmu_tx_is_syncing(tx)) {
  dsl_dataset_rele(ds, FTAG);
  return (0);
 }

 mutex_enter(&ds->ds_lock);
 if (!DS_UNIQUE_IS_ACCURATE(ds))
  dsl_dataset_recalc_head_uniq(ds);
 unique = dsl_dataset_phys(ds)->ds_unique_bytes;
 mutex_exit(&ds->ds_lock);

 if (MAX(unique, newval) > MAX(unique, ds->ds_reserved)) {
  uint64_t delta = MAX(unique, newval) -
      MAX(unique, ds->ds_reserved);

  if (delta >
      dsl_dir_space_available(ds->ds_dir, ((void*)0), 0, B_TRUE) ||
      (ds->ds_quota > 0 && newval > ds->ds_quota)) {
   dsl_dataset_rele(ds, FTAG);
   return (SET_ERROR(ENOSPC));
  }
 }

 dsl_dataset_rele(ds, FTAG);
 return (0);
}
