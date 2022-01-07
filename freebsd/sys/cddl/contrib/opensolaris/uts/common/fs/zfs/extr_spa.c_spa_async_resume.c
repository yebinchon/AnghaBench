
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zthr_t ;
struct TYPE_4__ {scalar_t__ spa_async_suspended; int * spa_checkpoint_discard_zthr; int * spa_condense_zthr; int spa_async_lock; } ;
typedef TYPE_1__ spa_t ;


 int ASSERT (int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_restart_removal (TYPE_1__*) ;
 int zthr_resume (int *) ;

void
spa_async_resume(spa_t *spa)
{
 mutex_enter(&spa->spa_async_lock);
 ASSERT(spa->spa_async_suspended != 0);
 spa->spa_async_suspended--;
 mutex_exit(&spa->spa_async_lock);
 spa_restart_removal(spa);

 zthr_t *condense_thread = spa->spa_condense_zthr;
 if (condense_thread != ((void*)0))
  zthr_resume(condense_thread);

 zthr_t *discard_thread = spa->spa_checkpoint_discard_zthr;
 if (discard_thread != ((void*)0))
  zthr_resume(discard_thread);
}
