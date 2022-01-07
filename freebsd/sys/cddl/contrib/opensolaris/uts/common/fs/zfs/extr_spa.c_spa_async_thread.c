
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_14__ {int spa_async_tasks; int spa_async_lock; int spa_async_cv; int * spa_async_thread; int spa_root_vdev; int spa_dsl_pool; int spa_sync_on; } ;
typedef TYPE_1__ spa_t ;


 int ASSERT (int ) ;
 int FTAG ;
 int RW_READER ;
 int SCL_CONFIG ;
 int SCL_NONE ;
 int SPA_ASYNC_AUTOEXPAND ;
 int SPA_ASYNC_CONFIG_UPDATE ;
 int SPA_ASYNC_INITIALIZE_RESTART ;
 int SPA_ASYNC_PROBE ;
 int SPA_ASYNC_REMOVE ;
 int SPA_ASYNC_RESILVER ;
 int SPA_ASYNC_RESILVER_DONE ;
 int SPA_CONFIG_UPDATE_POOL ;
 int cv_broadcast (int *) ;
 int dsl_resilver_restart (int ,int ) ;
 scalar_t__ metaslab_class_get_space (int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_async_autoexpand (TYPE_1__*,int ) ;
 int spa_async_probe (TYPE_1__*,int ) ;
 int spa_config_enter (TYPE_1__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_1__*,int ,int ) ;
 int spa_config_update (TYPE_1__*,int ) ;
 int spa_history_log_internal (TYPE_1__*,char*,int *,char*,int ,scalar_t__,scalar_t__) ;
 int spa_name (TYPE_1__*) ;
 int spa_namespace_lock ;
 int spa_normal_class (TYPE_1__*) ;
 int spa_suspended (TYPE_1__*) ;
 int spa_vdev_resilver_done (TYPE_1__*) ;
 int spa_vdev_state_enter (TYPE_1__*,int ) ;
 int spa_vdev_state_exit (TYPE_1__*,int *,int ) ;
 int thread_exit () ;
 int vdev_initialize_restart (int ) ;

__attribute__((used)) static void
spa_async_thread(void *arg)
{
 spa_t *spa = (spa_t *)arg;
 int tasks;

 ASSERT(spa->spa_sync_on);

 mutex_enter(&spa->spa_async_lock);
 tasks = spa->spa_async_tasks;
 spa->spa_async_tasks &= SPA_ASYNC_REMOVE;
 mutex_exit(&spa->spa_async_lock);




 if (tasks & SPA_ASYNC_CONFIG_UPDATE) {
  uint64_t old_space, new_space;

  mutex_enter(&spa_namespace_lock);
  old_space = metaslab_class_get_space(spa_normal_class(spa));
  spa_config_update(spa, SPA_CONFIG_UPDATE_POOL);
  new_space = metaslab_class_get_space(spa_normal_class(spa));
  mutex_exit(&spa_namespace_lock);





  if (new_space != old_space) {
   spa_history_log_internal(spa, "vdev online", ((void*)0),
       "pool '%s' size: %llu(+%llu)",
       spa_name(spa), new_space, new_space - old_space);
  }
 }

 if ((tasks & SPA_ASYNC_AUTOEXPAND) && !spa_suspended(spa)) {
  spa_config_enter(spa, SCL_CONFIG, FTAG, RW_READER);
  spa_async_autoexpand(spa, spa->spa_root_vdev);
  spa_config_exit(spa, SCL_CONFIG, FTAG);
 }




 if (tasks & SPA_ASYNC_PROBE) {
  spa_vdev_state_enter(spa, SCL_NONE);
  spa_async_probe(spa, spa->spa_root_vdev);
  (void) spa_vdev_state_exit(spa, ((void*)0), 0);
 }




 if (tasks & SPA_ASYNC_RESILVER_DONE)
  spa_vdev_resilver_done(spa);




 if (tasks & SPA_ASYNC_RESILVER)
  dsl_resilver_restart(spa->spa_dsl_pool, 0);

 if (tasks & SPA_ASYNC_INITIALIZE_RESTART) {
  mutex_enter(&spa_namespace_lock);
  spa_config_enter(spa, SCL_CONFIG, FTAG, RW_READER);
  vdev_initialize_restart(spa->spa_root_vdev);
  spa_config_exit(spa, SCL_CONFIG, FTAG);
  mutex_exit(&spa_namespace_lock);
 }




 mutex_enter(&spa->spa_async_lock);
 spa->spa_async_thread = ((void*)0);
 cv_broadcast(&spa->spa_async_cv);
 mutex_exit(&spa->spa_async_lock);
 thread_exit();
}
