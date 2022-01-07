
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int spa_state; scalar_t__ spa_inject_ref; scalar_t__ spa_config; int * spa_root_vdev; scalar_t__ spa_final_txg; int spa_dsl_pool; scalar_t__ spa_sync_on; } ;
typedef TYPE_1__ spa_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_TRUE ;
 int EBUSY ;
 int ENOENT ;
 int EROFS ;
 int ESC_ZFS_POOL_DESTROY ;
 int EXDEV ;
 int FTAG ;
 int FWRITE ;
 int POOL_STATE_EXPORTED ;
 int POOL_STATE_UNINITIALIZED ;
 int RW_WRITER ;
 int SCL_ALL ;
 int SET_ERROR (int ) ;
 scalar_t__ TXG_DEFER_SIZE ;
 int VDEV_INITIALIZE_ACTIVE ;
 int VERIFY (int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ nvlist_dup (scalar_t__,int **,int ) ;
 int spa_async_resume (TYPE_1__*) ;
 int spa_async_suspend (TYPE_1__*) ;
 int spa_close (TYPE_1__*,int ) ;
 int spa_config_enter (TYPE_1__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_1__*,int ,int ) ;
 int spa_deactivate (TYPE_1__*) ;
 int spa_event_notify (TYPE_1__*,int *,int *,int ) ;
 int spa_evicting_os_wait (TYPE_1__*) ;
 scalar_t__ spa_has_active_shared_spare (TYPE_1__*) ;
 scalar_t__ spa_last_synced_txg (TYPE_1__*) ;
 TYPE_1__* spa_lookup (char*) ;
 int spa_mode_global ;
 int spa_namespace_lock ;
 int spa_open_ref (TYPE_1__*,int ) ;
 int spa_refcount_zero (TYPE_1__*) ;
 int spa_remove (TYPE_1__*) ;
 int spa_unload (TYPE_1__*) ;
 int spa_write_cachefile (TYPE_1__*,int ,int ) ;
 int txg_wait_synced (int ,int ) ;
 int vdev_config_dirty (int *) ;
 int vdev_initialize_stop_all (int *,int ) ;

__attribute__((used)) static int
spa_export_common(char *pool, int new_state, nvlist_t **oldconfig,
    boolean_t force, boolean_t hardforce)
{
 spa_t *spa;

 if (oldconfig)
  *oldconfig = ((void*)0);

 if (!(spa_mode_global & FWRITE))
  return (SET_ERROR(EROFS));

 mutex_enter(&spa_namespace_lock);
 if ((spa = spa_lookup(pool)) == ((void*)0)) {
  mutex_exit(&spa_namespace_lock);
  return (SET_ERROR(ENOENT));
 }





 spa_open_ref(spa, FTAG);
 mutex_exit(&spa_namespace_lock);
 spa_async_suspend(spa);
 mutex_enter(&spa_namespace_lock);
 spa_close(spa, FTAG);





 if (spa->spa_state != POOL_STATE_UNINITIALIZED && spa->spa_sync_on) {





  txg_wait_synced(spa->spa_dsl_pool, 0);
  spa_evicting_os_wait(spa);






  if (!spa_refcount_zero(spa) ||
      (spa->spa_inject_ref != 0 &&
      new_state != POOL_STATE_UNINITIALIZED)) {
   spa_async_resume(spa);
   mutex_exit(&spa_namespace_lock);
   return (SET_ERROR(EBUSY));
  }







  if (!force && new_state == POOL_STATE_EXPORTED &&
      spa_has_active_shared_spare(spa)) {
   spa_async_resume(spa);
   mutex_exit(&spa_namespace_lock);
   return (SET_ERROR(EXDEV));
  }
  if (spa->spa_root_vdev != ((void*)0)) {
   vdev_initialize_stop_all(spa->spa_root_vdev,
       VDEV_INITIALIZE_ACTIVE);
  }






  if (new_state != POOL_STATE_UNINITIALIZED && !hardforce) {
   spa_config_enter(spa, SCL_ALL, FTAG, RW_WRITER);
   spa->spa_state = new_state;
   spa->spa_final_txg = spa_last_synced_txg(spa) +
       TXG_DEFER_SIZE + 1;
   vdev_config_dirty(spa->spa_root_vdev);
   spa_config_exit(spa, SCL_ALL, FTAG);
  }
 }

 spa_event_notify(spa, ((void*)0), ((void*)0), ESC_ZFS_POOL_DESTROY);

 if (spa->spa_state != POOL_STATE_UNINITIALIZED) {
  spa_unload(spa);
  spa_deactivate(spa);
 }

 if (oldconfig && spa->spa_config)
  VERIFY(nvlist_dup(spa->spa_config, oldconfig, 0) == 0);

 if (new_state != POOL_STATE_UNINITIALIZED) {
  if (!hardforce)
   spa_write_cachefile(spa, B_TRUE, B_TRUE);
  spa_remove(spa);
 }
 mutex_exit(&spa_namespace_lock);

 return (0);
}
