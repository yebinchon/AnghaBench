
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int dsl_pool_t ;
struct TYPE_8__ {int ddha_name; } ;
typedef TYPE_1__ dsl_destroy_head_arg_t ;
struct TYPE_9__ {int ds_dbuf; } ;
typedef TYPE_2__ dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_10__ {int ds_flags; } ;


 int DS_FLAG_INCONSISTENT ;
 int FTAG ;
 int VERIFY0 (int ) ;
 int dmu_buf_will_dirty (int ,int *) ;
 int * dmu_tx_pool (int *) ;
 int dsl_dataset_hold (int *,int ,int ,TYPE_2__**) ;
 TYPE_5__* dsl_dataset_phys (TYPE_2__*) ;
 int dsl_dataset_rele (TYPE_2__*,int ) ;
 int spa_history_log_internal_ds (TYPE_2__*,char*,int *,char*) ;

__attribute__((used)) static void
dsl_destroy_head_begin_sync(void *arg, dmu_tx_t *tx)
{
 dsl_destroy_head_arg_t *ddha = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dataset_t *ds;

 VERIFY0(dsl_dataset_hold(dp, ddha->ddha_name, FTAG, &ds));


 dmu_buf_will_dirty(ds->ds_dbuf, tx);
 dsl_dataset_phys(ds)->ds_flags |= DS_FLAG_INCONSISTENT;

 spa_history_log_internal_ds(ds, "destroy begin", tx, "");
 dsl_dataset_rele(ds, FTAG);
}
