
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int zlp_rewind; int zlp_txg; } ;
typedef TYPE_1__ zpool_load_policy_t ;
struct TYPE_15__ {scalar_t__ spa_state; int spa_last_open_failed; int spa_name; scalar_t__ spa_load_txg; scalar_t__ spa_last_ubsync_txg; int spa_load_info; int * spa_config; int spa_config_source; } ;
typedef TYPE_2__ spa_t ;
typedef scalar_t__ spa_load_state_t ;
typedef int nvlist_t ;


 int B_FALSE ;
 int B_TRUE ;
 int EBADF ;
 int ENOENT ;
 int KM_SLEEP ;
 scalar_t__ POOL_STATE_UNINITIALIZED ;
 int SET_ERROR (int ) ;
 int SPA_CONFIG_SRC_CACHEFILE ;
 scalar_t__ SPA_LOAD_OPEN ;
 scalar_t__ SPA_LOAD_RECOVER ;
 int VERIFY (int) ;
 int ZPOOL_CONFIG_LOAD_INFO ;
 int ZPOOL_DO_REWIND ;
 scalar_t__ curthread ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ mutex_owner (int *) ;
 scalar_t__ nvlist_add_nvlist (int *,int ,int ) ;
 scalar_t__ nvlist_dup (int *,int **,int ) ;
 int spa_activate (TYPE_2__*,int ) ;
 int * spa_config_generate (TYPE_2__*,int *,unsigned long long,int) ;
 int spa_deactivate (TYPE_2__*) ;
 int spa_load_best (TYPE_2__*,scalar_t__,int ,int) ;
 TYPE_2__* spa_lookup (char const*) ;
 int spa_mode_global ;
 int spa_namespace_lock ;
 int spa_open_ref (TYPE_2__*,void*) ;
 int spa_remove (TYPE_2__*) ;
 int spa_unload (TYPE_2__*) ;
 int spa_write_cachefile (TYPE_2__*,int,int) ;
 int zfs_dbgmsg (char*,char const*) ;
 int zpool_get_load_policy (int *,TYPE_1__*) ;
 int zvol_create_minors (int ) ;

__attribute__((used)) static int
spa_open_common(const char *pool, spa_t **spapp, void *tag, nvlist_t *nvpolicy,
    nvlist_t **config)
{
 spa_t *spa;
 spa_load_state_t state = SPA_LOAD_OPEN;
 int error;
 int locked = B_FALSE;
 int firstopen = B_FALSE;

 *spapp = ((void*)0);







 if (mutex_owner(&spa_namespace_lock) != curthread) {
  mutex_enter(&spa_namespace_lock);
  locked = B_TRUE;
 }

 if ((spa = spa_lookup(pool)) == ((void*)0)) {
  if (locked)
   mutex_exit(&spa_namespace_lock);
  return (SET_ERROR(ENOENT));
 }

 if (spa->spa_state == POOL_STATE_UNINITIALIZED) {
  zpool_load_policy_t policy;

  firstopen = B_TRUE;

  zpool_get_load_policy(nvpolicy ? nvpolicy : spa->spa_config,
      &policy);
  if (policy.zlp_rewind & ZPOOL_DO_REWIND)
   state = SPA_LOAD_RECOVER;

  spa_activate(spa, spa_mode_global);

  if (state != SPA_LOAD_RECOVER)
   spa->spa_last_ubsync_txg = spa->spa_load_txg = 0;
  spa->spa_config_source = SPA_CONFIG_SRC_CACHEFILE;

  zfs_dbgmsg("spa_open_common: opening %s", pool);
  error = spa_load_best(spa, state, policy.zlp_txg,
      policy.zlp_rewind);

  if (error == EBADF) {







   spa_unload(spa);
   spa_deactivate(spa);
   spa_write_cachefile(spa, B_TRUE, B_TRUE);
   spa_remove(spa);
   if (locked)
    mutex_exit(&spa_namespace_lock);
   return (SET_ERROR(ENOENT));
  }

  if (error) {





   if (config != ((void*)0) && spa->spa_config) {
    VERIFY(nvlist_dup(spa->spa_config, config,
        KM_SLEEP) == 0);
    VERIFY(nvlist_add_nvlist(*config,
        ZPOOL_CONFIG_LOAD_INFO,
        spa->spa_load_info) == 0);
   }
   spa_unload(spa);
   spa_deactivate(spa);
   spa->spa_last_open_failed = error;
   if (locked)
    mutex_exit(&spa_namespace_lock);
   *spapp = ((void*)0);
   return (error);
  }
 }

 spa_open_ref(spa, tag);

 if (config != ((void*)0))
  *config = spa_config_generate(spa, ((void*)0), -1ULL, B_TRUE);





 if (state == SPA_LOAD_RECOVER) {
  VERIFY(nvlist_add_nvlist(*config, ZPOOL_CONFIG_LOAD_INFO,
      spa->spa_load_info) == 0);
 }

 if (locked) {
  spa->spa_last_open_failed = 0;
  spa->spa_last_ubsync_txg = 0;
  spa->spa_load_txg = 0;
  mutex_exit(&spa_namespace_lock);






 }

 *spapp = spa;

 return (0);
}
