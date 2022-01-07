
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint64_t ;
typedef int dsl_pool_t ;
struct TYPE_13__ {int dd_pool; } ;
typedef TYPE_1__ dsl_dir_t ;
struct TYPE_14__ {int ds_object; } ;
typedef TYPE_2__ dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_15__ {int doca_cred; int doca_origin; int doca_clone; } ;
typedef TYPE_3__ dmu_objset_clone_arg_t ;


 int FTAG ;
 int VERIFY0 (int ) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int * dmu_tx_pool (int *) ;
 int dsl_dataset_create_sync (TYPE_1__*,char const*,TYPE_2__*,int ,int ,int *) ;
 int dsl_dataset_hold (int *,int ,int ,TYPE_2__**) ;
 int dsl_dataset_hold_obj (int ,int ,int ,TYPE_2__**) ;
 int dsl_dataset_name (TYPE_2__*,char*) ;
 int dsl_dataset_rele (TYPE_2__*,int ) ;
 int dsl_dir_hold (int *,int ,int ,TYPE_1__**,char const**) ;
 int dsl_dir_rele (TYPE_1__*,int ) ;
 int spa_history_log_internal_ds (TYPE_2__*,char*,int *,char*,char*,int ) ;

__attribute__((used)) static void
dmu_objset_clone_sync(void *arg, dmu_tx_t *tx)
{
 dmu_objset_clone_arg_t *doca = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dir_t *pdd;
 const char *tail;
 dsl_dataset_t *origin, *ds;
 uint64_t obj;
 char namebuf[ZFS_MAX_DATASET_NAME_LEN];

 VERIFY0(dsl_dir_hold(dp, doca->doca_clone, FTAG, &pdd, &tail));
 VERIFY0(dsl_dataset_hold(dp, doca->doca_origin, FTAG, &origin));

 obj = dsl_dataset_create_sync(pdd, tail, origin, 0,
     doca->doca_cred, tx);

 VERIFY0(dsl_dataset_hold_obj(pdd->dd_pool, obj, FTAG, &ds));
 dsl_dataset_name(origin, namebuf);
 spa_history_log_internal_ds(ds, "clone", tx,
     "origin=%s (%llu)", namebuf, origin->ds_object);
 dsl_dataset_rele(ds, FTAG);
 dsl_dataset_rele(origin, FTAG);
 dsl_dir_rele(pdd, FTAG);
}
