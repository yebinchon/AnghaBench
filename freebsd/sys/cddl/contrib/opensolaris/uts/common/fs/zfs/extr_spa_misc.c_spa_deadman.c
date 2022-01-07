
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spa_sync_starttime; int spa_deadman_cycid; int spa_root_vdev; int spa_deadman_calls; } ;
typedef TYPE_1__ spa_t ;


 int CY_INFINITY ;
 int MILLISEC ;
 int NANOSEC ;
 int VERIFY (int ) ;
 int callout_schedule (int *,int) ;
 int cyclic_reprogram (int ,int ) ;
 int gethrtime () ;
 int hz ;
 scalar_t__ spa_suspended (TYPE_1__*) ;
 int vdev_deadman (int ) ;
 int zfs_dbgmsg (char*,int,int ) ;
 int zfs_deadman_checktime_ms ;
 scalar_t__ zfs_deadman_enabled ;

__attribute__((used)) static void
spa_deadman(void *arg, int pending)
{
 spa_t *spa = arg;




 if (spa_suspended(spa)) {





  return;
 }

 zfs_dbgmsg("slow spa_sync: started %llu seconds ago, calls %llu",
     (gethrtime() - spa->spa_sync_starttime) / NANOSEC,
     ++spa->spa_deadman_calls);
 if (zfs_deadman_enabled)
  vdev_deadman(spa->spa_root_vdev);






}
