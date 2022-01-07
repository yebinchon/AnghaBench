
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int spa_trim_lock; int spa_trim_thread; int spa_trim_cv; } ;
typedef TYPE_1__ spa_t ;


 int CV_DEFAULT ;
 int MUTEX_DEFAULT ;
 int TS_RUN ;
 int cv_init (int *,int *,int ,int *) ;
 int minclsyspri ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int mutex_init (int *,int *,int ,int *) ;
 int p0 ;
 int thread_create (int *,int ,int ,TYPE_1__*,int ,int *,int ,int ) ;
 int trim_thread ;
 int zfs_trim_enabled ;

void
trim_thread_create(spa_t *spa)
{

 if (!zfs_trim_enabled)
  return;

 mutex_init(&spa->spa_trim_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 cv_init(&spa->spa_trim_cv, ((void*)0), CV_DEFAULT, ((void*)0));
 mutex_enter(&spa->spa_trim_lock);
 spa->spa_trim_thread = thread_create(((void*)0), 0, trim_thread, spa, 0, &p0,
     TS_RUN, minclsyspri);
 mutex_exit(&spa->spa_trim_lock);
}
