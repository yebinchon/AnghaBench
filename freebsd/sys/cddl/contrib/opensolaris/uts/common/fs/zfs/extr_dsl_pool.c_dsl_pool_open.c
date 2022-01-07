
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;


typedef int uint64_t ;
struct TYPE_18__ {int tx_open_txg; } ;
struct TYPE_19__ {int dp_config_rwlock; TYPE_1__ dp_tx; int dp_tmp_userrefs_obj; int dp_meta_objset; int dp_empty_bpobj; int dp_spa; int dp_bptree_obj; int * dp_leak_dir; int dp_obsolete_bpobj; int dp_free_bpobj; int * dp_free_dir; int * dp_origin_snap; int * dp_mos_dir; int dp_root_dir; int dp_root_dir_obj; } ;
typedef TYPE_2__ dsl_pool_t ;
typedef int dsl_dir_t ;
typedef int dsl_dataset_t ;
struct TYPE_20__ {int dd_head_dataset_obj; } ;
struct TYPE_17__ {int ds_prev_snap_obj; } ;


 int DMU_POOL_BPTREE_OBJ ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 int DMU_POOL_EMPTY_BPOBJ ;
 int DMU_POOL_FREE_BPOBJ ;
 int DMU_POOL_OBSOLETE_BPOBJ ;
 int DMU_POOL_ROOT_DATASET ;
 int DMU_POOL_TMP_USERREFS ;
 int ENOENT ;
 int FREE_DIR_NAME ;
 TYPE_2__* FTAG ;
 int LEAK_DIR_NAME ;
 int MOS_DIR_NAME ;
 int ORIGIN_DIR_NAME ;
 int RW_WRITER ;
 int SPA_FEATURE_ASYNC_DESTROY ;
 int SPA_FEATURE_EMPTY_BPOBJ ;
 int SPA_FEATURE_OBSOLETE_COUNTS ;
 scalar_t__ SPA_VERSION_DEADLISTS ;
 scalar_t__ SPA_VERSION_ORIGIN ;
 int VERIFY0 (int ) ;
 int bpobj_open (int *,int ,int ) ;
 int dsl_dataset_hold_obj (TYPE_2__*,int ,TYPE_2__*,int **) ;
 TYPE_13__* dsl_dataset_phys (int *) ;
 int dsl_dataset_rele (int *,TYPE_2__*) ;
 int dsl_dir_hold_obj (TYPE_2__*,int ,int *,TYPE_2__*,int *) ;
 TYPE_9__* dsl_dir_phys (int *) ;
 int dsl_dir_rele (int *,TYPE_2__*) ;
 int dsl_pool_open_special_dir (TYPE_2__*,int ,int **) ;
 int dsl_scan_init (TYPE_2__*,int ) ;
 int rrw_enter (int *,int ,TYPE_2__*) ;
 int rrw_exit (int *,TYPE_2__*) ;
 scalar_t__ spa_feature_is_active (int ,int ) ;
 scalar_t__ spa_version (int ) ;
 int zap_lookup (int ,int ,int ,int,int,int *) ;

int
dsl_pool_open(dsl_pool_t *dp)
{
 int err;
 dsl_dir_t *dd;
 dsl_dataset_t *ds;
 uint64_t obj;

 rrw_enter(&dp->dp_config_rwlock, RW_WRITER, FTAG);
 err = zap_lookup(dp->dp_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
     DMU_POOL_ROOT_DATASET, sizeof (uint64_t), 1,
     &dp->dp_root_dir_obj);
 if (err)
  goto out;

 err = dsl_dir_hold_obj(dp, dp->dp_root_dir_obj,
     ((void*)0), dp, &dp->dp_root_dir);
 if (err)
  goto out;

 err = dsl_pool_open_special_dir(dp, MOS_DIR_NAME, &dp->dp_mos_dir);
 if (err)
  goto out;

 if (spa_version(dp->dp_spa) >= SPA_VERSION_ORIGIN) {
  err = dsl_pool_open_special_dir(dp, ORIGIN_DIR_NAME, &dd);
  if (err)
   goto out;
  err = dsl_dataset_hold_obj(dp,
      dsl_dir_phys(dd)->dd_head_dataset_obj, FTAG, &ds);
  if (err == 0) {
   err = dsl_dataset_hold_obj(dp,
       dsl_dataset_phys(ds)->ds_prev_snap_obj, dp,
       &dp->dp_origin_snap);
   dsl_dataset_rele(ds, FTAG);
  }
  dsl_dir_rele(dd, dp);
  if (err)
   goto out;
 }

 if (spa_version(dp->dp_spa) >= SPA_VERSION_DEADLISTS) {
  err = dsl_pool_open_special_dir(dp, FREE_DIR_NAME,
      &dp->dp_free_dir);
  if (err)
   goto out;

  err = zap_lookup(dp->dp_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
      DMU_POOL_FREE_BPOBJ, sizeof (uint64_t), 1, &obj);
  if (err)
   goto out;
  VERIFY0(bpobj_open(&dp->dp_free_bpobj,
      dp->dp_meta_objset, obj));
 }

 if (spa_feature_is_active(dp->dp_spa, SPA_FEATURE_OBSOLETE_COUNTS)) {
  err = zap_lookup(dp->dp_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
      DMU_POOL_OBSOLETE_BPOBJ, sizeof (uint64_t), 1, &obj);
  if (err == 0) {
   VERIFY0(bpobj_open(&dp->dp_obsolete_bpobj,
       dp->dp_meta_objset, obj));
  } else if (err == ENOENT) {



   err = 0;
  } else {
   goto out;
  }
 }





 (void) dsl_pool_open_special_dir(dp, LEAK_DIR_NAME,
     &dp->dp_leak_dir);

 if (spa_feature_is_active(dp->dp_spa, SPA_FEATURE_ASYNC_DESTROY)) {
  err = zap_lookup(dp->dp_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
      DMU_POOL_BPTREE_OBJ, sizeof (uint64_t), 1,
      &dp->dp_bptree_obj);
  if (err != 0)
   goto out;
 }

 if (spa_feature_is_active(dp->dp_spa, SPA_FEATURE_EMPTY_BPOBJ)) {
  err = zap_lookup(dp->dp_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
      DMU_POOL_EMPTY_BPOBJ, sizeof (uint64_t), 1,
      &dp->dp_empty_bpobj);
  if (err != 0)
   goto out;
 }

 err = zap_lookup(dp->dp_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
     DMU_POOL_TMP_USERREFS, sizeof (uint64_t), 1,
     &dp->dp_tmp_userrefs_obj);
 if (err == ENOENT)
  err = 0;
 if (err)
  goto out;

 err = dsl_scan_init(dp, dp->dp_tx.tx_open_txg);

out:
 rrw_exit(&dp->dp_config_rwlock, FTAG);
 return (err);
}
