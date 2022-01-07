
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int sav_count; int * sav_vdevs; } ;
struct TYPE_7__ {int sav_count; int * sav_vdevs; } ;
struct TYPE_9__ {int spa_async_tasks; int spa_async_lock; int spa_async_cv; int * spa_async_thread_vd; TYPE_2__ spa_spares; TYPE_1__ spa_l2cache; int spa_root_vdev; } ;
typedef TYPE_3__ spa_t ;


 int SCL_NONE ;
 int SPA_ASYNC_REMOVE ;
 int cv_broadcast (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_async_remove (TYPE_3__*,int ) ;
 int spa_vdev_state_enter (TYPE_3__*,int ) ;
 int spa_vdev_state_exit (TYPE_3__*,int *,int ) ;
 int thread_exit () ;

__attribute__((used)) static void
spa_async_thread_vd(void *arg)
{
 spa_t *spa = arg;
 int tasks;

 mutex_enter(&spa->spa_async_lock);
 tasks = spa->spa_async_tasks;
retry:
 spa->spa_async_tasks &= ~SPA_ASYNC_REMOVE;
 mutex_exit(&spa->spa_async_lock);




 if (tasks & SPA_ASYNC_REMOVE) {
  spa_vdev_state_enter(spa, SCL_NONE);
  spa_async_remove(spa, spa->spa_root_vdev);
  for (int i = 0; i < spa->spa_l2cache.sav_count; i++)
   spa_async_remove(spa, spa->spa_l2cache.sav_vdevs[i]);
  for (int i = 0; i < spa->spa_spares.sav_count; i++)
   spa_async_remove(spa, spa->spa_spares.sav_vdevs[i]);
  (void) spa_vdev_state_exit(spa, ((void*)0), 0);
 }




 mutex_enter(&spa->spa_async_lock);
 tasks = spa->spa_async_tasks;
 if ((tasks & SPA_ASYNC_REMOVE) != 0)
  goto retry;
 spa->spa_async_thread_vd = ((void*)0);
 cv_broadcast(&spa->spa_async_cv);
 mutex_exit(&spa->spa_async_lock);
 thread_exit();
}
