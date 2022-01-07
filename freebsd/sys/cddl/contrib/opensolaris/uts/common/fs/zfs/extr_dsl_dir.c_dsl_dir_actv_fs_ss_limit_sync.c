
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int spa_t ;
typedef int dsl_pool_t ;
struct TYPE_5__ {int ds_dir; } ;
typedef TYPE_1__ dsl_dataset_t ;
typedef int dmu_tx_t ;


 int FTAG ;
 int SPA_FEATURE_FS_SS_LIMIT ;
 int VERIFY0 (int ) ;
 int * dmu_tx_pool (int *) ;
 int * dsl_dataset_get_spa (TYPE_1__*) ;
 int dsl_dataset_hold (int *,char*,int ,TYPE_1__**) ;
 int dsl_dataset_rele (TYPE_1__*,int ) ;
 int dsl_dir_init_fs_ss_count (int ,int *) ;
 int spa_feature_incr (int *,int ,int *) ;
 int spa_feature_is_active (int *,int ) ;

__attribute__((used)) static void
dsl_dir_actv_fs_ss_limit_sync(void *arg, dmu_tx_t *tx)
{
 char *ddname = (char *)arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dataset_t *ds;
 spa_t *spa;

 VERIFY0(dsl_dataset_hold(dp, ddname, FTAG, &ds));

 spa = dsl_dataset_get_spa(ds);

 if (!spa_feature_is_active(spa, SPA_FEATURE_FS_SS_LIMIT)) {







  spa_feature_incr(spa, SPA_FEATURE_FS_SS_LIMIT, tx);
 }






 dsl_dir_init_fs_ss_count(ds->ds_dir, tx);

 dsl_dataset_rele(ds, FTAG);
}
