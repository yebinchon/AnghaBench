
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
typedef int dsl_pool_t ;
struct TYPE_13__ {TYPE_8__* dd_pool; } ;
typedef TYPE_1__ dsl_dir_t ;
struct TYPE_14__ {int ds_bp_rwlock; } ;
typedef TYPE_2__ dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_15__ {int doca_cred; int doca_userarg; int (* doca_userfunc ) (int *,int ,int ,int *) ;int doca_type; int doca_flags; int doca_name; } ;
typedef TYPE_3__ dmu_objset_create_arg_t ;
typedef int blkptr_t ;
struct TYPE_16__ {int dp_spa; } ;


 int FTAG ;
 int RW_READER ;
 int VERIFY0 (int ) ;
 int * dmu_objset_create_impl (int ,TYPE_2__*,int *,int ,int *) ;
 int * dmu_tx_pool (int *) ;
 int dsl_dataset_create_sync (TYPE_1__*,char const*,int *,int ,int ,int *) ;
 int * dsl_dataset_get_blkptr (TYPE_2__*) ;
 int dsl_dataset_hold_obj (TYPE_8__*,int ,int ,TYPE_2__**) ;
 int dsl_dataset_rele (TYPE_2__*,int ) ;
 int dsl_dir_hold (int *,int ,int ,TYPE_1__**,char const**) ;
 int dsl_dir_rele (TYPE_1__*,int ) ;
 int rrw_enter (int *,int ,int ) ;
 int rrw_exit (int *,int ) ;
 int spa_history_log_internal_ds (TYPE_2__*,char*,int *,char*) ;
 int stub1 (int *,int ,int ,int *) ;

__attribute__((used)) static void
dmu_objset_create_sync(void *arg, dmu_tx_t *tx)
{
 dmu_objset_create_arg_t *doca = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dir_t *pdd;
 const char *tail;
 dsl_dataset_t *ds;
 uint64_t obj;
 blkptr_t *bp;
 objset_t *os;

 VERIFY0(dsl_dir_hold(dp, doca->doca_name, FTAG, &pdd, &tail));

 obj = dsl_dataset_create_sync(pdd, tail, ((void*)0), doca->doca_flags,
     doca->doca_cred, tx);

 VERIFY0(dsl_dataset_hold_obj(pdd->dd_pool, obj, FTAG, &ds));
 rrw_enter(&ds->ds_bp_rwlock, RW_READER, FTAG);
 bp = dsl_dataset_get_blkptr(ds);
 os = dmu_objset_create_impl(pdd->dd_pool->dp_spa,
     ds, bp, doca->doca_type, tx);
 rrw_exit(&ds->ds_bp_rwlock, FTAG);

 if (doca->doca_userfunc != ((void*)0)) {
  doca->doca_userfunc(os, doca->doca_userarg,
      doca->doca_cred, tx);
 }

 spa_history_log_internal_ds(ds, "create", tx, "");
 dsl_dataset_rele(ds, FTAG);
 dsl_dir_rele(pdd, FTAG);
}
