
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int dsl_pool_t ;
struct TYPE_6__ {int ds_prev; } ;
typedef TYPE_1__ dsl_dataset_t ;
struct TYPE_7__ {int ddsta_cleanup_minor; int ddsta_htag; int ddsta_snapname; int ddsta_fsname; } ;
typedef TYPE_2__ dsl_dataset_snapshot_tmp_arg_t ;
typedef int dmu_tx_t ;


 int B_TRUE ;
 int FTAG ;
 int VERIFY0 (int ) ;
 int * dmu_tx_pool (int *) ;
 int dsl_dataset_hold (int *,int ,int ,TYPE_1__**) ;
 int dsl_dataset_rele (TYPE_1__*,int ) ;
 int dsl_dataset_snapshot_sync_impl (TYPE_1__*,int ,int *) ;
 int dsl_dataset_user_hold_sync_one (int ,int ,int ,int ,int *) ;
 int dsl_destroy_snapshot_sync_impl (int ,int ,int *) ;
 int gethrestime_sec () ;

__attribute__((used)) static void
dsl_dataset_snapshot_tmp_sync(void *arg, dmu_tx_t *tx)
{
 dsl_dataset_snapshot_tmp_arg_t *ddsta = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dataset_t *ds;

 VERIFY0(dsl_dataset_hold(dp, ddsta->ddsta_fsname, FTAG, &ds));

 dsl_dataset_snapshot_sync_impl(ds, ddsta->ddsta_snapname, tx);
 dsl_dataset_user_hold_sync_one(ds->ds_prev, ddsta->ddsta_htag,
     ddsta->ddsta_cleanup_minor, gethrestime_sec(), tx);
 dsl_destroy_snapshot_sync_impl(ds->ds_prev, B_TRUE, tx);

 dsl_dataset_rele(ds, FTAG);
}
