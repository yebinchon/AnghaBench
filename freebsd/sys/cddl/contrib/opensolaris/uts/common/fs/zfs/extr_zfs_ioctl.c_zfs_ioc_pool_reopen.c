
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
struct TYPE_9__ {int spa_scrub_reopen; int spa_root_vdev; int spa_dsl_pool; } ;
typedef TYPE_2__ spa_t ;


 int B_FALSE ;
 int FTAG ;
 int SCL_NONE ;
 int dsl_scan_resilvering (int ) ;
 int spa_close (TYPE_2__*,int ) ;
 int spa_open (int ,TYPE_2__**,int ) ;
 int spa_vdev_state_enter (TYPE_2__*,int ) ;
 int spa_vdev_state_exit (TYPE_2__*,int *,int ) ;
 int vdev_reopen (int ) ;

__attribute__((used)) static int
zfs_ioc_pool_reopen(zfs_cmd_t *zc)
{
 spa_t *spa;
 int error;

 error = spa_open(zc->zc_name, &spa, FTAG);
 if (error != 0)
  return (error);

 spa_vdev_state_enter(spa, SCL_NONE);







 spa->spa_scrub_reopen = dsl_scan_resilvering(spa->spa_dsl_pool);
 vdev_reopen(spa->spa_root_vdev);
 spa->spa_scrub_reopen = B_FALSE;

 (void) spa_vdev_state_exit(spa, ((void*)0), 0);
 spa_close(spa, FTAG);
 return (0);
}
