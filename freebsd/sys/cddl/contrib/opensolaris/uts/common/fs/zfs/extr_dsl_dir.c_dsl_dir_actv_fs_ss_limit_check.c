
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int dp_meta_objset; int dp_spa; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_10__ {int dd_object; } ;
typedef TYPE_2__ dsl_dir_t ;
struct TYPE_11__ {TYPE_2__* ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
typedef int dmu_tx_t ;


 int DD_FIELD_FILESYSTEM_COUNT ;
 int EALREADY ;
 int ENOTSUP ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int SPA_FEATURE_FS_SS_LIMIT ;
 TYPE_1__* dmu_tx_pool (int *) ;
 int dsl_dataset_hold (TYPE_1__*,char*,int ,TYPE_3__**) ;
 int dsl_dataset_rele (TYPE_3__*,int ) ;
 scalar_t__ dsl_dir_is_zapified (TYPE_2__*) ;
 scalar_t__ spa_feature_is_active (int ,int ) ;
 int spa_feature_is_enabled (int ,int ) ;
 scalar_t__ zap_contains (int ,int ,int ) ;

__attribute__((used)) static int
dsl_dir_actv_fs_ss_limit_check(void *arg, dmu_tx_t *tx)
{
 char *ddname = (char *)arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dataset_t *ds;
 dsl_dir_t *dd;
 int error;

 error = dsl_dataset_hold(dp, ddname, FTAG, &ds);
 if (error != 0)
  return (error);

 if (!spa_feature_is_enabled(dp->dp_spa, SPA_FEATURE_FS_SS_LIMIT)) {
  dsl_dataset_rele(ds, FTAG);
  return (SET_ERROR(ENOTSUP));
 }

 dd = ds->ds_dir;
 if (spa_feature_is_active(dp->dp_spa, SPA_FEATURE_FS_SS_LIMIT) &&
     dsl_dir_is_zapified(dd) &&
     zap_contains(dp->dp_meta_objset, dd->dd_object,
     DD_FIELD_FILESYSTEM_COUNT) == 0) {
  dsl_dataset_rele(ds, FTAG);
  return (SET_ERROR(EALREADY));
 }

 dsl_dataset_rele(ds, FTAG);
 return (0);
}
