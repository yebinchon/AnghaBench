
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int svr_lock; int svr_thread_exit; int svr_cv; int * svr_thread; } ;
typedef TYPE_1__ spa_vdev_removal_t ;
struct TYPE_5__ {TYPE_1__* spa_vdev_removal; } ;
typedef TYPE_2__ spa_t ;


 int B_FALSE ;
 int B_TRUE ;
 int cv_wait (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
spa_vdev_remove_suspend(spa_t *spa)
{
 spa_vdev_removal_t *svr = spa->spa_vdev_removal;

 if (svr == ((void*)0))
  return;

 mutex_enter(&svr->svr_lock);
 svr->svr_thread_exit = B_TRUE;
 while (svr->svr_thread != ((void*)0))
  cv_wait(&svr->svr_cv, &svr->svr_lock);
 svr->svr_thread_exit = B_FALSE;
 mutex_exit(&svr->svr_lock);
}
