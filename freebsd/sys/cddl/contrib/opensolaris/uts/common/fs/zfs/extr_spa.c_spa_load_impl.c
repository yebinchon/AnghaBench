
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u_longlong_t ;
struct TYPE_30__ {scalar_t__ ub_checkpoint_txg; } ;
struct TYPE_31__ {int spa_import_flags; scalar_t__ spa_config_source; scalar_t__ spa_load_state; scalar_t__ spa_load_max_txg; int spa_root_vdev; int spa_dsl_pool; int spa_claim_max_txg; void* spa_sync_on; TYPE_1__ spa_uberblock; int spa_config_txg; } ;
typedef TYPE_2__ spa_t ;
typedef int spa_import_type_t ;
typedef int boolean_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 void* B_TRUE ;
 int DS_FIND_CHILDREN ;
 int ENOTSUP ;
 int FTAG ;
 int MUTEX_HELD (int *) ;
 int RW_READER ;
 int SCL_CONFIG ;
 int SPA_ASYNC_RESILVER ;
 scalar_t__ SPA_CONFIG_SRC_NONE ;
 scalar_t__ SPA_LOAD_RECOVER ;
 scalar_t__ SPA_LOAD_TRYIMPORT ;
 scalar_t__ UINT64_MAX ;
 int VDEV_AUX_UNSUP_FEAT ;
 int ZFS_IMPORT_CHECKPOINT ;
 int dmu_objset_find (int ,int ,int *,int ) ;
 int dsl_destroy_inconsistent ;
 int dsl_pool_clean_tmp_userrefs (int ) ;
 int dsl_scan_resilvering (int ) ;
 int spa_async_request (TYPE_2__*,int ) ;
 int spa_config_enter (TYPE_2__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_2__*,int ,int ) ;
 int spa_history_log_internal (TYPE_2__*,char*,int *,char*,int ) ;
 int spa_history_log_version (TYPE_2__*,char*) ;
 int spa_ld_check_features (TYPE_2__*,int*) ;
 int spa_ld_check_for_config_update (TYPE_2__*,int ,int) ;
 int spa_ld_checkpoint_rewind (TYPE_2__*) ;
 int spa_ld_claim_log_blocks (TYPE_2__*) ;
 int spa_ld_get_props (TYPE_2__*) ;
 int spa_ld_load_dedup_tables (TYPE_2__*) ;
 int spa_ld_load_special_directories (TYPE_2__*) ;
 int spa_ld_load_vdev_metadata (TYPE_2__*) ;
 int spa_ld_mos_with_trusted_config (TYPE_2__*,int ,int*) ;
 int spa_ld_open_aux_vdevs (TYPE_2__*,int ) ;
 int spa_ld_open_indirect_vdev_metadata (TYPE_2__*) ;
 int spa_ld_prepare_for_reload (TYPE_2__*) ;
 int spa_ld_read_checkpoint_txg (TYPE_2__*) ;
 int spa_ld_verify_logs (TYPE_2__*,int ,char**) ;
 int spa_ld_verify_pool_data (TYPE_2__*) ;
 int spa_load_note (TYPE_2__*,char*) ;
 int spa_name (TYPE_2__*) ;
 int spa_namespace_lock ;
 int spa_restart_removal (TYPE_2__*) ;
 int spa_spawn_aux_threads (TYPE_2__*) ;
 int spa_update_dspace (TYPE_2__*) ;
 int spa_vdev_err (int ,int ,int ) ;
 scalar_t__ spa_writeable (TYPE_2__*) ;
 int txg_sync_start (int ) ;
 int txg_wait_synced (int ,int ) ;
 int vdev_initialize_restart (int ) ;
 scalar_t__ vdev_resilver_needed (int ,int *,int *) ;

__attribute__((used)) static int
spa_load_impl(spa_t *spa, spa_import_type_t type, char **ereport)
{
 int error = 0;
 boolean_t missing_feat_write = B_FALSE;
 boolean_t checkpoint_rewind =
     (spa->spa_import_flags & ZFS_IMPORT_CHECKPOINT);
 boolean_t update_config_cache = B_FALSE;

 ASSERT(MUTEX_HELD(&spa_namespace_lock));
 ASSERT(spa->spa_config_source != SPA_CONFIG_SRC_NONE);

 spa_load_note(spa, "LOADING");

 error = spa_ld_mos_with_trusted_config(spa, type, &update_config_cache);
 if (error != 0)
  return (error);







 if (checkpoint_rewind) {




  update_config_cache = B_TRUE;







  error = spa_ld_checkpoint_rewind(spa);
  if (error != 0)
   return (error);





  spa_ld_prepare_for_reload(spa);
  spa_load_note(spa, "LOADING checkpointed uberblock");
  error = spa_ld_mos_with_trusted_config(spa, type, ((void*)0));
  if (error != 0)
   return (error);
 }




 error = spa_ld_read_checkpoint_txg(spa);
 if (error != 0)
  return (error);
 error = spa_ld_open_indirect_vdev_metadata(spa);
 if (error != 0)
  return (error);





 error = spa_ld_check_features(spa, &missing_feat_write);
 if (error != 0)
  return (error);





 error = spa_ld_load_special_directories(spa);
 if (error != 0)
  return (error);




 error = spa_ld_get_props(spa);
 if (error != 0)
  return (error);





 error = spa_ld_open_aux_vdevs(spa, type);
 if (error != 0)
  return (error);





 error = spa_ld_load_vdev_metadata(spa);
 if (error != 0)
  return (error);

 error = spa_ld_load_dedup_tables(spa);
 if (error != 0)
  return (error);





 error = spa_ld_verify_logs(spa, type, ereport);
 if (error != 0)
  return (error);

 if (missing_feat_write) {
  ASSERT(spa->spa_load_state == SPA_LOAD_TRYIMPORT);






  return (spa_vdev_err(spa->spa_root_vdev, VDEV_AUX_UNSUP_FEAT,
      ENOTSUP));
 }






 error = spa_ld_verify_pool_data(spa);
 if (error != 0)
  return (error);






 spa_update_dspace(spa);






 if (spa_writeable(spa) && (spa->spa_load_state == SPA_LOAD_RECOVER ||
     spa->spa_load_max_txg == UINT64_MAX)) {
  uint64_t config_cache_txg = spa->spa_config_txg;

  ASSERT(spa->spa_load_state != SPA_LOAD_TRYIMPORT);





  if (checkpoint_rewind) {
   spa_history_log_internal(spa, "checkpoint rewind",
       ((void*)0), "rewound state to txg=%llu",
       (u_longlong_t)spa->spa_uberblock.ub_checkpoint_txg);
  }




  spa_ld_claim_log_blocks(spa);




  spa->spa_sync_on = B_TRUE;
  txg_sync_start(spa->spa_dsl_pool);
  txg_wait_synced(spa->spa_dsl_pool, spa->spa_claim_max_txg);






  spa_ld_check_for_config_update(spa, config_cache_txg,
      update_config_cache);




  if (!dsl_scan_resilvering(spa->spa_dsl_pool) &&
      vdev_resilver_needed(spa->spa_root_vdev, ((void*)0), ((void*)0)))
   spa_async_request(spa, SPA_ASYNC_RESILVER);





  spa_history_log_version(spa, "open");

  spa_restart_removal(spa);
  spa_spawn_aux_threads(spa);
  (void) dmu_objset_find(spa_name(spa),
      dsl_destroy_inconsistent, ((void*)0), DS_FIND_CHILDREN);




  dsl_pool_clean_tmp_userrefs(spa->spa_dsl_pool);

  spa_config_enter(spa, SCL_CONFIG, FTAG, RW_READER);
  vdev_initialize_restart(spa->spa_root_vdev);
  spa_config_exit(spa, SCL_CONFIG, FTAG);
 }

 spa_load_note(spa, "LOADED");

 return (0);
}
