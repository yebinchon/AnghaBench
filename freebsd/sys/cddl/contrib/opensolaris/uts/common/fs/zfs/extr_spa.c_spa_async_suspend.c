
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zthr_t ;
struct TYPE_4__ {int * spa_checkpoint_discard_zthr; int * spa_condense_zthr; int spa_async_lock; int spa_async_cv; int * spa_async_thread_vd; int * spa_async_thread; int spa_async_suspended; } ;
typedef TYPE_1__ spa_t ;


 int cv_wait (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_vdev_remove_suspend (TYPE_1__*) ;
 int zthr_cancel (int *) ;

void
spa_async_suspend(spa_t *spa)
{
 mutex_enter(&spa->spa_async_lock);
 spa->spa_async_suspended++;
 while (spa->spa_async_thread != ((void*)0) ||
     spa->spa_async_thread_vd != ((void*)0))
  cv_wait(&spa->spa_async_cv, &spa->spa_async_lock);
 mutex_exit(&spa->spa_async_lock);

 spa_vdev_remove_suspend(spa);

 zthr_t *condense_thread = spa->spa_condense_zthr;
 if (condense_thread != ((void*)0))
  zthr_cancel(condense_thread);

 zthr_t *discard_thread = spa->spa_checkpoint_discard_zthr;
 if (discard_thread != ((void*)0))
  zthr_cancel(discard_thread);
}
