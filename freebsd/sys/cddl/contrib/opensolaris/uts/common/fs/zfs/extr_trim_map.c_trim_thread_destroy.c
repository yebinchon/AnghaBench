
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spa_trim_lock; int spa_trim_cv; int * spa_trim_thread; } ;
typedef TYPE_1__ spa_t ;


 int cv_destroy (int *) ;
 int cv_signal (int *) ;
 int cv_wait (int *,int *) ;
 int mutex_destroy (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfs_trim_enabled ;

void
trim_thread_destroy(spa_t *spa)
{

 if (!zfs_trim_enabled)
  return;
 if (spa->spa_trim_thread == ((void*)0))
  return;

 mutex_enter(&spa->spa_trim_lock);

 spa->spa_trim_thread = ((void*)0);
 cv_signal(&spa->spa_trim_cv);

 while (spa->spa_trim_thread == ((void*)0))
  cv_wait(&spa->spa_trim_cv, &spa->spa_trim_lock);
 spa->spa_trim_thread = ((void*)0);
 mutex_exit(&spa->spa_trim_lock);

 cv_destroy(&spa->spa_trim_cv);
 mutex_destroy(&spa->spa_trim_lock);
}
