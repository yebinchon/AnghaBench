
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int vdev_guid_sum; scalar_t__ vdev_guid; } ;
typedef TYPE_1__ vdev_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_10__ {TYPE_1__* spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;
typedef int dmu_tx_t ;
struct TYPE_11__ {TYPE_2__* dp_spa; } ;


 int FTAG ;
 int RW_READER ;
 int SCL_STATE ;
 TYPE_8__* dmu_tx_pool (int *) ;
 int spa_config_enter (TYPE_2__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_2__*,int ,int ) ;
 scalar_t__ spa_guid (TYPE_2__*) ;
 int spa_history_log_internal (TYPE_2__*,char*,int *,char*,scalar_t__,scalar_t__) ;
 int vdev_config_dirty (TYPE_1__*) ;

__attribute__((used)) static void
spa_change_guid_sync(void *arg, dmu_tx_t *tx)
{
 uint64_t *newguid = arg;
 spa_t *spa = dmu_tx_pool(tx)->dp_spa;
 uint64_t oldguid;
 vdev_t *rvd = spa->spa_root_vdev;

 oldguid = spa_guid(spa);

 spa_config_enter(spa, SCL_STATE, FTAG, RW_READER);
 rvd->vdev_guid = *newguid;
 rvd->vdev_guid_sum += (*newguid - oldguid);
 vdev_config_dirty(rvd);
 spa_config_exit(spa, SCL_STATE, FTAG);

 spa_history_log_internal(spa, "guid change", tx, "old=%llu new=%llu",
     oldguid, *newguid);
}
