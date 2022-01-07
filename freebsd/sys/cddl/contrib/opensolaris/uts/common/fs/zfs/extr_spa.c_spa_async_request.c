
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int spa_async_tasks; int spa_async_lock; int spa_name; } ;
typedef TYPE_1__ spa_t ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_async_dispatch_vd (TYPE_1__*) ;
 int zfs_dbgmsg (char*,int ,int) ;

void
spa_async_request(spa_t *spa, int task)
{
 zfs_dbgmsg("spa=%s async request task=%u", spa->spa_name, task);
 mutex_enter(&spa->spa_async_lock);
 spa->spa_async_tasks |= task;
 mutex_exit(&spa->spa_async_lock);
 spa_async_dispatch_vd(spa);
}
