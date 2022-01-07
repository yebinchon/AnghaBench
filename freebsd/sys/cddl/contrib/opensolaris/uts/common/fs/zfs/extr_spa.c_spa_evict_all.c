
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ spa_state; } ;
typedef TYPE_1__ spa_t ;


 int FTAG ;
 scalar_t__ POOL_STATE_UNINITIALIZED ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_async_suspend (TYPE_1__*) ;
 int spa_close (TYPE_1__*,int ) ;
 int spa_deactivate (TYPE_1__*) ;
 int spa_namespace_lock ;
 TYPE_1__* spa_next (int *) ;
 int spa_open_ref (TYPE_1__*,int ) ;
 int spa_remove (TYPE_1__*) ;
 int spa_unload (TYPE_1__*) ;

void
spa_evict_all(void)
{
 spa_t *spa;





 mutex_enter(&spa_namespace_lock);
 while ((spa = spa_next(((void*)0))) != ((void*)0)) {





  spa_open_ref(spa, FTAG);
  mutex_exit(&spa_namespace_lock);
  spa_async_suspend(spa);
  mutex_enter(&spa_namespace_lock);
  spa_close(spa, FTAG);

  if (spa->spa_state != POOL_STATE_UNINITIALIZED) {
   spa_unload(spa);
   spa_deactivate(spa);
  }
  spa_remove(spa);
 }
 mutex_exit(&spa_namespace_lock);
}
