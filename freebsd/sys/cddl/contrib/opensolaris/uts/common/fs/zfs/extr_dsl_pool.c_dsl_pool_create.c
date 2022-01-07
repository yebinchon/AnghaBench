
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint64_t ;
typedef int spa_t ;
typedef int objset_t ;
typedef int nvlist_t ;
struct TYPE_17__ {int dp_config_rwlock; int * dp_spa; int * dp_root_dir; void* dp_meta_objset; int dp_free_bpobj; int dp_free_dir; int dp_mos_dir; int dp_root_dir_obj; int dp_meta_rootbp; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_18__ {int ds_bp_rwlock; } ;
typedef TYPE_2__ dsl_dataset_t ;
typedef int dmu_tx_t ;


 int ASSERT0 (int) ;
 int DMU_OST_META ;
 int DMU_OST_ZFS ;
 int DMU_OT_NONE ;
 int DMU_OT_OBJECT_DIRECTORY ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 int DMU_POOL_FREE_BPOBJ ;
 int * FREE_DIR_NAME ;
 int FTAG ;
 int * MOS_DIR_NAME ;
 int RW_READER ;
 int RW_WRITER ;
 int SPA_OLD_MAXBLOCKSIZE ;
 scalar_t__ SPA_VERSION_DEADLISTS ;
 scalar_t__ SPA_VERSION_DSL_SCRUB ;
 int VERIFY (int) ;
 int VERIFY0 (int ) ;
 int bpobj_alloc (void*,int ,int *) ;
 int bpobj_open (int *,void*,int ) ;
 void* dmu_objset_create_impl (int *,TYPE_2__*,int *,int ,int *) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create_assigned (TYPE_1__*,int ) ;
 int dsl_dataset_create_sync_dd (int *,int *,int ,int *) ;
 int * dsl_dataset_get_blkptr (TYPE_2__*) ;
 int dsl_dataset_hold_obj (TYPE_1__*,int ,int ,TYPE_2__**) ;
 int dsl_dataset_rele (TYPE_2__*,int ) ;
 int dsl_dir_create_sync (TYPE_1__*,int *,int *,int *) ;
 int dsl_dir_hold_obj (TYPE_1__*,int ,int *,TYPE_1__*,int **) ;
 int dsl_pool_create_origin (TYPE_1__*,int *) ;
 TYPE_1__* dsl_pool_open_impl (int *,int ) ;
 int dsl_pool_open_special_dir (TYPE_1__*,int *,int *) ;
 int dsl_scan_init (TYPE_1__*,int ) ;
 int kcred ;
 int rrw_enter (int *,int ,int ) ;
 int rrw_exit (int *,int ) ;
 scalar_t__ spa_version (int *) ;
 scalar_t__ zap_add (void*,int ,int ,int,int,int *,int *) ;
 int zap_create_claim (void*,int ,int ,int ,int ,int *) ;
 int zfs_create_fs (int *,int ,int *,int *) ;

dsl_pool_t *
dsl_pool_create(spa_t *spa, nvlist_t *zplprops, uint64_t txg)
{
 int err;
 dsl_pool_t *dp = dsl_pool_open_impl(spa, txg);
 dmu_tx_t *tx = dmu_tx_create_assigned(dp, txg);
 dsl_dataset_t *ds;
 uint64_t obj;

 rrw_enter(&dp->dp_config_rwlock, RW_WRITER, FTAG);


 dp->dp_meta_objset = dmu_objset_create_impl(spa,
     ((void*)0), &dp->dp_meta_rootbp, DMU_OST_META, tx);


 err = zap_create_claim(dp->dp_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
     DMU_OT_OBJECT_DIRECTORY, DMU_OT_NONE, 0, tx);
 ASSERT0(err);


 VERIFY0(dsl_scan_init(dp, txg));


 dp->dp_root_dir_obj = dsl_dir_create_sync(dp, ((void*)0), ((void*)0), tx);
 VERIFY0(dsl_dir_hold_obj(dp, dp->dp_root_dir_obj,
     ((void*)0), dp, &dp->dp_root_dir));


 (void) dsl_dir_create_sync(dp, dp->dp_root_dir, MOS_DIR_NAME, tx);
 VERIFY0(dsl_pool_open_special_dir(dp,
     MOS_DIR_NAME, &dp->dp_mos_dir));

 if (spa_version(spa) >= SPA_VERSION_DEADLISTS) {

  (void) dsl_dir_create_sync(dp, dp->dp_root_dir,
      FREE_DIR_NAME, tx);
  VERIFY0(dsl_pool_open_special_dir(dp,
      FREE_DIR_NAME, &dp->dp_free_dir));


  obj = bpobj_alloc(dp->dp_meta_objset, SPA_OLD_MAXBLOCKSIZE, tx);
  VERIFY(zap_add(dp->dp_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
      DMU_POOL_FREE_BPOBJ, sizeof (uint64_t), 1, &obj, tx) == 0);
  VERIFY0(bpobj_open(&dp->dp_free_bpobj,
      dp->dp_meta_objset, obj));
 }

 if (spa_version(spa) >= SPA_VERSION_DSL_SCRUB)
  dsl_pool_create_origin(dp, tx);


 obj = dsl_dataset_create_sync_dd(dp->dp_root_dir, ((void*)0), 0, tx);


 VERIFY0(dsl_dataset_hold_obj(dp, obj, FTAG, &ds));
 dsl_dataset_rele(ds, FTAG);

 dmu_tx_commit(tx);

 rrw_exit(&dp->dp_config_rwlock, FTAG);

 return (dp);
}
