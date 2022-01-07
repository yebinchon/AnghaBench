
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ spa_config_guid; scalar_t__ spa_last_synced_guid; TYPE_1__* spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;
typedef int dsl_pool_t ;
struct TYPE_5__ {scalar_t__ vdev_guid; } ;


 scalar_t__ dsl_pool_sync_context (int *) ;
 int * spa_get_dsl (TYPE_2__*) ;

uint64_t
spa_guid(spa_t *spa)
{
 dsl_pool_t *dp = spa_get_dsl(spa);
 uint64_t guid;







 if (spa->spa_root_vdev == ((void*)0))
  return (spa->spa_config_guid);

 guid = spa->spa_last_synced_guid != 0 ?
     spa->spa_last_synced_guid : spa->spa_root_vdev->vdev_guid;





 if (dp && dsl_pool_sync_context(dp))
  return (spa->spa_root_vdev->vdev_guid);
 else
  return (guid);
}
