
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
typedef int objset_t ;
typedef int last_remap_txg ;
struct TYPE_9__ {int dd_object; } ;
typedef TYPE_1__ dsl_dir_t ;
struct TYPE_10__ {TYPE_1__* ds_dir; } ;


 int DD_FIELD_LAST_REMAP_TXG ;
 int EINVAL ;
 int ENOTSUP ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int SPA_FEATURE_OBSOLETE_COUNTS ;
 TYPE_4__* dmu_objset_ds (int *) ;
 int dmu_objset_hold (char const*,int ,int **) ;
 int dmu_objset_pool (int *) ;
 int dmu_objset_rele (int *,int ) ;
 int dmu_objset_remap_indirects_impl (int *,unsigned long long) ;
 int dmu_objset_spa (int *) ;
 scalar_t__ dsl_dataset_is_snapshot (TYPE_4__*) ;
 int dsl_dataset_long_hold (TYPE_4__*,int ) ;
 int dsl_dataset_long_rele (TYPE_4__*,int ) ;
 int dsl_dataset_rele (TYPE_4__*,int ) ;
 scalar_t__ dsl_dir_is_zapified (TYPE_1__*) ;
 int dsl_dir_update_last_remap_txg (TYPE_1__*,unsigned long long) ;
 int dsl_pool_rele (int ,int ) ;
 int spa_feature_is_enabled (int ,int ) ;
 unsigned long long spa_get_last_removal_txg (int ) ;
 unsigned long long spa_last_synced_txg (int ) ;
 int spa_meta_objset (int ) ;
 scalar_t__ zap_lookup (int ,int ,int ,int,int,unsigned long long*) ;

int
dmu_objset_remap_indirects(const char *fsname)
{
 int error = 0;
 objset_t *os = ((void*)0);
 uint64_t last_removed_txg;
 uint64_t remap_start_txg;
 dsl_dir_t *dd;

 error = dmu_objset_hold(fsname, FTAG, &os);
 if (error != 0) {
  return (error);
 }
 dd = dmu_objset_ds(os)->ds_dir;

 if (!spa_feature_is_enabled(dmu_objset_spa(os),
     SPA_FEATURE_OBSOLETE_COUNTS)) {
  dmu_objset_rele(os, FTAG);
  return (SET_ERROR(ENOTSUP));
 }

 if (dsl_dataset_is_snapshot(dmu_objset_ds(os))) {
  dmu_objset_rele(os, FTAG);
  return (SET_ERROR(EINVAL));
 }




 last_removed_txg = spa_get_last_removal_txg(dmu_objset_spa(os));
 if (last_removed_txg == -1ULL) {
  dmu_objset_rele(os, FTAG);
  return (0);
 }




 if (dsl_dir_is_zapified(dd)) {
  uint64_t last_remap_txg;
  if (zap_lookup(spa_meta_objset(dmu_objset_spa(os)),
      dd->dd_object, DD_FIELD_LAST_REMAP_TXG,
      sizeof (last_remap_txg), 1, &last_remap_txg) == 0 &&
      last_remap_txg > last_removed_txg) {
   dmu_objset_rele(os, FTAG);
   return (0);
  }
 }

 dsl_dataset_long_hold(dmu_objset_ds(os), FTAG);
 dsl_pool_rele(dmu_objset_pool(os), FTAG);

 remap_start_txg = spa_last_synced_txg(dmu_objset_spa(os));
 error = dmu_objset_remap_indirects_impl(os, last_removed_txg);
 if (error == 0) {





  error = dsl_dir_update_last_remap_txg(dd, remap_start_txg);
 }

 dsl_dataset_long_rele(dmu_objset_ds(os), FTAG);
 dsl_dataset_rele(dmu_objset_ds(os), FTAG);

 return (error);
}
