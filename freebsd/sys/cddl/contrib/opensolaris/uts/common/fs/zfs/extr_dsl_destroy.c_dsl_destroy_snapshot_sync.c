
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dsl_pool_t ;
struct TYPE_2__ {char* ddsa_name; int ddsa_defer; } ;
typedef TYPE_1__ dsl_destroy_snapshot_arg_t ;
typedef int dsl_dataset_t ;
typedef int dmu_tx_t ;
typedef int boolean_t ;


 int ASSERT0 (int) ;
 int ENOENT ;
 int FTAG ;
 int * dmu_tx_pool (int *) ;
 int dsl_dataset_hold (int *,char const*,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_destroy_snapshot_sync_impl (int *,int ,int *) ;

void
dsl_destroy_snapshot_sync(void *arg, dmu_tx_t *tx)
{
 dsl_destroy_snapshot_arg_t *ddsa = arg;
 const char *dsname = ddsa->ddsa_name;
 boolean_t defer = ddsa->ddsa_defer;

 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dataset_t *ds;

 int error = dsl_dataset_hold(dp, dsname, FTAG, &ds);
 if (error == ENOENT)
  return;
 ASSERT0(error);
 dsl_destroy_snapshot_sync_impl(ds, defer, tx);
 dsl_dataset_rele(ds, FTAG);
}
