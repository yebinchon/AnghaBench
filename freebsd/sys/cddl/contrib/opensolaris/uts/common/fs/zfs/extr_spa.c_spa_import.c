
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_20__ ;
typedef struct TYPE_26__ TYPE_1__ ;


struct TYPE_26__ {int zlp_rewind; scalar_t__ zlp_txg; } ;
typedef TYPE_1__ zpool_load_policy_t ;
typedef int uint_t ;
typedef int uint64_t ;
struct TYPE_27__ {void* sav_sync; int * sav_config; } ;
struct TYPE_28__ {int spa_import_flags; TYPE_20__ spa_l2cache; TYPE_20__ spa_spares; scalar_t__ spa_autoreplace; int spa_load_info; scalar_t__ spa_load_txg; scalar_t__ spa_last_ubsync_txg; int spa_config_source; } ;
typedef TYPE_2__ spa_t ;
typedef scalar_t__ spa_load_state_t ;
typedef int nvlist_t ;
typedef int longlong_t ;


 int B_FALSE ;
 void* B_TRUE ;
 int DATA_TYPE_NVLIST_ARRAY ;
 int EEXIST ;
 int ESC_ZFS_POOL_IMPORT ;
 int FREAD ;
 int FTAG ;
 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int RW_WRITER ;
 int SCL_ALL ;
 int SET_ERROR (int ) ;
 int SPA_ASYNC_AUTOEXPAND ;
 int SPA_CONFIG_SRC_TRYIMPORT ;
 int SPA_CONFIG_UPDATE_POOL ;
 scalar_t__ SPA_LOAD_IMPORT ;
 scalar_t__ SPA_LOAD_RECOVER ;
 int VDEV_ALLOC_L2CACHE ;
 int VDEV_ALLOC_SPARE ;
 int VERIFY (int) ;
 int ZFS_IMPORT_VERBATIM ;
 int ZPOOL_CONFIG_L2CACHE ;
 int ZPOOL_CONFIG_LOAD_INFO ;
 int ZPOOL_CONFIG_SPARES ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 int ZPOOL_DO_REWIND ;
 int ZPOOL_PROP_ALTROOT ;
 int ZPOOL_PROP_READONLY ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ nvlist_add_nvlist (int *,int ,int ) ;
 scalar_t__ nvlist_add_nvlist_array (int *,int ,int **,int ) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,int *) ;
 int nvlist_lookup_string (int *,int ,char**) ;
 int nvlist_lookup_uint64 (int *,int ,int*) ;
 scalar_t__ nvlist_remove (int *,int ,int ) ;
 int spa_activate (TYPE_2__*,int) ;
 TYPE_2__* spa_add (char const*,int *,char*) ;
 int spa_async_request (TYPE_2__*,int ) ;
 int spa_async_resume (TYPE_2__*) ;
 int spa_async_suspend (TYPE_2__*) ;
 int spa_aux_check_removed (TYPE_20__*) ;
 int spa_config_enter (TYPE_2__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_2__*,int ,int ) ;
 int spa_config_update (TYPE_2__*,int ) ;
 int spa_configfile_set (TYPE_2__*,int *,int) ;
 int spa_deactivate (TYPE_2__*) ;
 int spa_event_notify (TYPE_2__*,int *,int *,int ) ;
 int spa_history_log_version (TYPE_2__*,char*) ;
 int spa_load_best (TYPE_2__*,scalar_t__,scalar_t__,int) ;
 int spa_load_l2cache (TYPE_2__*) ;
 int spa_load_spares (TYPE_2__*) ;
 int * spa_lookup (char const*) ;
 int spa_mode_global ;
 int spa_namespace_lock ;
 int spa_prop_set (TYPE_2__*,int *) ;
 int spa_remove (TYPE_2__*) ;
 int spa_unload (TYPE_2__*) ;
 int spa_validate_aux (TYPE_2__*,int *,unsigned long long,int ) ;
 int spa_write_cachefile (TYPE_2__*,int,void*) ;
 scalar_t__ spa_writeable (TYPE_2__*) ;
 int zfs_dbgmsg (char*,char const*,...) ;
 int zpool_get_load_policy (int *,TYPE_1__*) ;
 int zpool_prop_to_name (int ) ;
 int zvol_create_minors (char const*) ;

int
spa_import(const char *pool, nvlist_t *config, nvlist_t *props, uint64_t flags)
{
 spa_t *spa;
 char *altroot = ((void*)0);
 spa_load_state_t state = SPA_LOAD_IMPORT;
 zpool_load_policy_t policy;
 uint64_t mode = spa_mode_global;
 uint64_t readonly = B_FALSE;
 int error;
 nvlist_t *nvroot;
 nvlist_t **spares, **l2cache;
 uint_t nspares, nl2cache;




 mutex_enter(&spa_namespace_lock);
 if (spa_lookup(pool) != ((void*)0)) {
  mutex_exit(&spa_namespace_lock);
  return (SET_ERROR(EEXIST));
 }




 (void) nvlist_lookup_string(props,
     zpool_prop_to_name(ZPOOL_PROP_ALTROOT), &altroot);
 (void) nvlist_lookup_uint64(props,
     zpool_prop_to_name(ZPOOL_PROP_READONLY), &readonly);
 if (readonly)
  mode = FREAD;
 spa = spa_add(pool, config, altroot);
 spa->spa_import_flags = flags;





 if (spa->spa_import_flags & ZFS_IMPORT_VERBATIM) {
  if (props != ((void*)0))
   spa_configfile_set(spa, props, B_FALSE);

  spa_write_cachefile(spa, B_FALSE, B_TRUE);
  spa_event_notify(spa, ((void*)0), ((void*)0), ESC_ZFS_POOL_IMPORT);
  zfs_dbgmsg("spa_import: verbatim import of %s", pool);
  mutex_exit(&spa_namespace_lock);
  return (0);
 }

 spa_activate(spa, mode);




 spa_async_suspend(spa);

 zpool_get_load_policy(config, &policy);
 if (policy.zlp_rewind & ZPOOL_DO_REWIND)
  state = SPA_LOAD_RECOVER;

 spa->spa_config_source = SPA_CONFIG_SRC_TRYIMPORT;

 if (state != SPA_LOAD_RECOVER) {
  spa->spa_last_ubsync_txg = spa->spa_load_txg = 0;
  zfs_dbgmsg("spa_import: importing %s", pool);
 } else {
  zfs_dbgmsg("spa_import: importing %s, max_txg=%lld "
      "(RECOVERY MODE)", pool, (longlong_t)policy.zlp_txg);
 }
 error = spa_load_best(spa, state, policy.zlp_txg, policy.zlp_rewind);





 VERIFY(nvlist_add_nvlist(config, ZPOOL_CONFIG_LOAD_INFO,
     spa->spa_load_info) == 0);

 spa_config_enter(spa, SCL_ALL, FTAG, RW_WRITER);




 if (spa->spa_spares.sav_config) {
  nvlist_free(spa->spa_spares.sav_config);
  spa->spa_spares.sav_config = ((void*)0);
  spa_load_spares(spa);
 }
 if (spa->spa_l2cache.sav_config) {
  nvlist_free(spa->spa_l2cache.sav_config);
  spa->spa_l2cache.sav_config = ((void*)0);
  spa_load_l2cache(spa);
 }

 VERIFY(nvlist_lookup_nvlist(config, ZPOOL_CONFIG_VDEV_TREE,
     &nvroot) == 0);
 if (error == 0)
  error = spa_validate_aux(spa, nvroot, -1ULL,
      VDEV_ALLOC_SPARE);
 if (error == 0)
  error = spa_validate_aux(spa, nvroot, -1ULL,
      VDEV_ALLOC_L2CACHE);
 spa_config_exit(spa, SCL_ALL, FTAG);

 if (props != ((void*)0))
  spa_configfile_set(spa, props, B_FALSE);

 if (error != 0 || (props && spa_writeable(spa) &&
     (error = spa_prop_set(spa, props)))) {
  spa_unload(spa);
  spa_deactivate(spa);
  spa_remove(spa);
  mutex_exit(&spa_namespace_lock);
  return (error);
 }

 spa_async_resume(spa);





 if (nvlist_lookup_nvlist_array(nvroot, ZPOOL_CONFIG_SPARES,
     &spares, &nspares) == 0) {
  if (spa->spa_spares.sav_config)
   VERIFY(nvlist_remove(spa->spa_spares.sav_config,
       ZPOOL_CONFIG_SPARES, DATA_TYPE_NVLIST_ARRAY) == 0);
  else
   VERIFY(nvlist_alloc(&spa->spa_spares.sav_config,
       NV_UNIQUE_NAME, KM_SLEEP) == 0);
  VERIFY(nvlist_add_nvlist_array(spa->spa_spares.sav_config,
      ZPOOL_CONFIG_SPARES, spares, nspares) == 0);
  spa_config_enter(spa, SCL_ALL, FTAG, RW_WRITER);
  spa_load_spares(spa);
  spa_config_exit(spa, SCL_ALL, FTAG);
  spa->spa_spares.sav_sync = B_TRUE;
 }
 if (nvlist_lookup_nvlist_array(nvroot, ZPOOL_CONFIG_L2CACHE,
     &l2cache, &nl2cache) == 0) {
  if (spa->spa_l2cache.sav_config)
   VERIFY(nvlist_remove(spa->spa_l2cache.sav_config,
       ZPOOL_CONFIG_L2CACHE, DATA_TYPE_NVLIST_ARRAY) == 0);
  else
   VERIFY(nvlist_alloc(&spa->spa_l2cache.sav_config,
       NV_UNIQUE_NAME, KM_SLEEP) == 0);
  VERIFY(nvlist_add_nvlist_array(spa->spa_l2cache.sav_config,
      ZPOOL_CONFIG_L2CACHE, l2cache, nl2cache) == 0);
  spa_config_enter(spa, SCL_ALL, FTAG, RW_WRITER);
  spa_load_l2cache(spa);
  spa_config_exit(spa, SCL_ALL, FTAG);
  spa->spa_l2cache.sav_sync = B_TRUE;
 }




 if (spa->spa_autoreplace) {
  spa_aux_check_removed(&spa->spa_spares);
  spa_aux_check_removed(&spa->spa_l2cache);
 }

 if (spa_writeable(spa)) {



  spa_config_update(spa, SPA_CONFIG_UPDATE_POOL);
 }





 spa_async_request(spa, SPA_ASYNC_AUTOEXPAND);

 spa_history_log_version(spa, "import");

 spa_event_notify(spa, ((void*)0), ((void*)0), ESC_ZFS_POOL_IMPORT);

 mutex_exit(&spa_namespace_lock);






 return (0);
}
