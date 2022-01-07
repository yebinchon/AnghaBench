
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
struct TYPE_9__ {int ddsqra_value; int ddsqra_source; int ddsqra_name; } ;
typedef TYPE_1__ dsl_dir_set_qr_arg_t ;
struct TYPE_10__ {TYPE_3__* ds_dir; } ;
typedef TYPE_2__ dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_12__ {scalar_t__ dd_reserved; scalar_t__ dd_used_bytes; } ;
struct TYPE_11__ {int dd_lock; } ;


 int ENOSPC ;
 int FTAG ;
 int SET_ERROR (int ) ;
 scalar_t__ dmu_tx_is_syncing (int *) ;
 int * dmu_tx_pool (int *) ;
 int dsl_dataset_hold (int *,int ,int ,TYPE_2__**) ;
 int dsl_dataset_rele (TYPE_2__*,int ) ;
 TYPE_5__* dsl_dir_phys (TYPE_3__*) ;
 scalar_t__ dsl_dir_space_towrite (TYPE_3__*) ;
 int dsl_prop_predict (TYPE_3__*,char*,int ,int ,scalar_t__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static int
dsl_dir_set_quota_check(void *arg, dmu_tx_t *tx)
{
 dsl_dir_set_qr_arg_t *ddsqra = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dataset_t *ds;
 int error;
 uint64_t towrite, newval;

 error = dsl_dataset_hold(dp, ddsqra->ddsqra_name, FTAG, &ds);
 if (error != 0)
  return (error);

 error = dsl_prop_predict(ds->ds_dir, "quota",
     ddsqra->ddsqra_source, ddsqra->ddsqra_value, &newval);
 if (error != 0) {
  dsl_dataset_rele(ds, FTAG);
  return (error);
 }

 if (newval == 0) {
  dsl_dataset_rele(ds, FTAG);
  return (0);
 }

 mutex_enter(&ds->ds_dir->dd_lock);






 towrite = dsl_dir_space_towrite(ds->ds_dir);
 if ((dmu_tx_is_syncing(tx) || towrite == 0) &&
     (newval < dsl_dir_phys(ds->ds_dir)->dd_reserved ||
     newval < dsl_dir_phys(ds->ds_dir)->dd_used_bytes + towrite)) {
  error = SET_ERROR(ENOSPC);
 }
 mutex_exit(&ds->ds_dir->dd_lock);
 dsl_dataset_rele(ds, FTAG);
 return (error);
}
