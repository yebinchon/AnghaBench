
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_11__ ;


typedef int spa_t ;
typedef int longlong_t ;
struct TYPE_21__ {int scn_async_destroying; int scn_async_stalled; scalar_t__ scn_visited_this_txg; int scn_async_block_min_time_ms; void* scn_is_bptree; scalar_t__ scn_sync_start_time; int * scn_zio_root; } ;
typedef TYPE_1__ dsl_scan_t ;
struct TYPE_22__ {int dp_obsolete_bpobj; int * dp_spa; int dp_meta_objset; int * dp_free_dir; int * dp_leak_dir; int dp_config_rwlock; int dp_root_dir; scalar_t__ dp_bptree_obj; int dp_free_bpobj; TYPE_1__* dp_scan; } ;
typedef TYPE_2__ dsl_pool_t ;
struct TYPE_23__ {scalar_t__ tx_txg; } ;
typedef TYPE_3__ dmu_tx_t ;
struct TYPE_20__ {int dd_uncompressed_bytes; int dd_compressed_bytes; int dd_used_bytes; } ;


 int ASSERT (int) ;
 int ASSERT0 (int ) ;
 void* B_FALSE ;
 void* B_TRUE ;
 int DD_USED_HEAD ;
 int DMU_POOL_BPTREE_OBJ ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 int DMU_POOL_OBSOLETE_BPOBJ ;
 int ECKSUM ;
 int EIO ;
 int EQUIV (scalar_t__,int) ;
 int ERESTART ;
 int FTAG ;
 int LEAK_DIR_NAME ;
 scalar_t__ NSEC2MSEC (scalar_t__) ;
 int RW_WRITER ;
 int SPA_FEATURE_ASYNC_DESTROY ;
 int SPA_FEATURE_OBSOLETE_COUNTS ;
 scalar_t__ SPA_VERSION_DEADLISTS ;
 int VERIFY0 (int ) ;
 int ZIO_FLAG_MUSTSUCCEED ;
 scalar_t__ bpobj_is_empty (int *) ;
 scalar_t__ bpobj_is_open (int *) ;
 int bpobj_iterate (int *,int ,TYPE_1__*,TYPE_3__*) ;
 int bptree_free (int ,scalar_t__,TYPE_3__*) ;
 scalar_t__ bptree_is_empty (int ,scalar_t__) ;
 int bptree_iterate (int ,scalar_t__,void*,int ,TYPE_1__*,TYPE_3__*) ;
 int ddt_sync (int *,scalar_t__) ;
 int dsl_dir_create_sync (TYPE_2__*,int ,int ,TYPE_3__*) ;
 int dsl_dir_diduse_space (int *,int ,int ,int ,int ,TYPE_3__*) ;
 TYPE_11__* dsl_dir_phys (int *) ;
 int dsl_pool_destroy_obsolete_bpobj (TYPE_2__*,TYPE_3__*) ;
 int dsl_pool_open_special_dir (TYPE_2__*,int ,int **) ;
 int dsl_scan_free_block_cb ;
 int dsl_scan_obsolete_block_cb ;
 scalar_t__ gethrtime () ;
 int rrw_enter (int *,int ,int ) ;
 int rrw_exit (int *,int ) ;
 int spa_feature_decr (int *,int ,TYPE_3__*) ;
 int spa_feature_is_active (int *,int ) ;
 scalar_t__ spa_suspend_async_destroy (int *) ;
 scalar_t__ spa_version (int *) ;
 scalar_t__ zap_contains (int ,int ,int ) ;
 int zap_remove (int ,int ,int ,TYPE_3__*) ;
 int zfs_dbgmsg (char*,int ,int ,int ,int) ;
 scalar_t__ zfs_free_bpobj_enabled ;
 scalar_t__ zfs_free_leak_on_eio ;
 int zfs_free_min_time_ms ;
 int zfs_obsolete_min_time_ms ;
 int zfs_panic_recover (char*,int) ;
 void* zio_root (int *,int *,int *,int ) ;
 int zio_wait (int *) ;

__attribute__((used)) static int
dsl_process_async_destroys(dsl_pool_t *dp, dmu_tx_t *tx)
{
 int err = 0;
 dsl_scan_t *scn = dp->dp_scan;
 spa_t *spa = dp->dp_spa;

 if (spa_suspend_async_destroy(spa))
  return (0);

 if (zfs_free_bpobj_enabled &&
     spa_version(spa) >= SPA_VERSION_DEADLISTS) {
  scn->scn_is_bptree = B_FALSE;
  scn->scn_async_block_min_time_ms = zfs_free_min_time_ms;
  scn->scn_zio_root = zio_root(spa, ((void*)0),
      ((void*)0), ZIO_FLAG_MUSTSUCCEED);
  err = bpobj_iterate(&dp->dp_free_bpobj,
      dsl_scan_free_block_cb, scn, tx);
  VERIFY0(zio_wait(scn->scn_zio_root));
  scn->scn_zio_root = ((void*)0);

  if (err != 0 && err != ERESTART)
   zfs_panic_recover("error %u from bpobj_iterate()", err);
 }

 if (err == 0 && spa_feature_is_active(spa, SPA_FEATURE_ASYNC_DESTROY)) {
  ASSERT(scn->scn_async_destroying);
  scn->scn_is_bptree = B_TRUE;
  scn->scn_zio_root = zio_root(spa, ((void*)0),
      ((void*)0), ZIO_FLAG_MUSTSUCCEED);
  err = bptree_iterate(dp->dp_meta_objset,
      dp->dp_bptree_obj, B_TRUE, dsl_scan_free_block_cb, scn, tx);
  VERIFY0(zio_wait(scn->scn_zio_root));
  scn->scn_zio_root = ((void*)0);

  if (err == EIO || err == ECKSUM) {
   err = 0;
  } else if (err != 0 && err != ERESTART) {
   zfs_panic_recover("error %u from "
       "traverse_dataset_destroyed()", err);
  }

  if (bptree_is_empty(dp->dp_meta_objset, dp->dp_bptree_obj)) {

   spa_feature_decr(spa, SPA_FEATURE_ASYNC_DESTROY, tx);
   ASSERT(!spa_feature_is_active(spa,
       SPA_FEATURE_ASYNC_DESTROY));
   VERIFY0(zap_remove(dp->dp_meta_objset,
       DMU_POOL_DIRECTORY_OBJECT,
       DMU_POOL_BPTREE_OBJ, tx));
   VERIFY0(bptree_free(dp->dp_meta_objset,
       dp->dp_bptree_obj, tx));
   dp->dp_bptree_obj = 0;
   scn->scn_async_destroying = B_FALSE;
   scn->scn_async_stalled = B_FALSE;
  } else {
   scn->scn_async_stalled =
       (scn->scn_visited_this_txg == 0);
  }
 }
 if (scn->scn_visited_this_txg) {
  zfs_dbgmsg("freed %llu blocks in %llums from "
      "free_bpobj/bptree txg %llu; err=%d",
      (longlong_t)scn->scn_visited_this_txg,
      (longlong_t)
      NSEC2MSEC(gethrtime() - scn->scn_sync_start_time),
      (longlong_t)tx->tx_txg, err);
  scn->scn_visited_this_txg = 0;






  ddt_sync(spa, tx->tx_txg);
 }
 if (err != 0)
  return (err);
 if (dp->dp_free_dir != ((void*)0) && !scn->scn_async_destroying &&
     zfs_free_leak_on_eio &&
     (dsl_dir_phys(dp->dp_free_dir)->dd_used_bytes != 0 ||
     dsl_dir_phys(dp->dp_free_dir)->dd_compressed_bytes != 0 ||
     dsl_dir_phys(dp->dp_free_dir)->dd_uncompressed_bytes != 0)) {





  if (dp->dp_leak_dir == ((void*)0)) {
   rrw_enter(&dp->dp_config_rwlock, RW_WRITER, FTAG);
   (void) dsl_dir_create_sync(dp, dp->dp_root_dir,
       LEAK_DIR_NAME, tx);
   VERIFY0(dsl_pool_open_special_dir(dp,
       LEAK_DIR_NAME, &dp->dp_leak_dir));
   rrw_exit(&dp->dp_config_rwlock, FTAG);
  }
  dsl_dir_diduse_space(dp->dp_leak_dir, DD_USED_HEAD,
      dsl_dir_phys(dp->dp_free_dir)->dd_used_bytes,
      dsl_dir_phys(dp->dp_free_dir)->dd_compressed_bytes,
      dsl_dir_phys(dp->dp_free_dir)->dd_uncompressed_bytes, tx);
  dsl_dir_diduse_space(dp->dp_free_dir, DD_USED_HEAD,
      -dsl_dir_phys(dp->dp_free_dir)->dd_used_bytes,
      -dsl_dir_phys(dp->dp_free_dir)->dd_compressed_bytes,
      -dsl_dir_phys(dp->dp_free_dir)->dd_uncompressed_bytes, tx);
 }

 if (dp->dp_free_dir != ((void*)0) && !scn->scn_async_destroying) {

  ASSERT0(dsl_dir_phys(dp->dp_free_dir)->dd_used_bytes);
  ASSERT0(dsl_dir_phys(dp->dp_free_dir)->dd_compressed_bytes);
  ASSERT0(dsl_dir_phys(dp->dp_free_dir)->dd_uncompressed_bytes);
 }

 EQUIV(bpobj_is_open(&dp->dp_obsolete_bpobj),
     0 == zap_contains(dp->dp_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
     DMU_POOL_OBSOLETE_BPOBJ));
 if (err == 0 && bpobj_is_open(&dp->dp_obsolete_bpobj)) {
  ASSERT(spa_feature_is_active(dp->dp_spa,
      SPA_FEATURE_OBSOLETE_COUNTS));

  scn->scn_is_bptree = B_FALSE;
  scn->scn_async_block_min_time_ms = zfs_obsolete_min_time_ms;
  err = bpobj_iterate(&dp->dp_obsolete_bpobj,
      dsl_scan_obsolete_block_cb, scn, tx);
  if (err != 0 && err != ERESTART)
   zfs_panic_recover("error %u from bpobj_iterate()", err);

  if (bpobj_is_empty(&dp->dp_obsolete_bpobj))
   dsl_pool_destroy_obsolete_bpobj(dp, tx);
 }

 return (0);
}
