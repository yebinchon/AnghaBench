
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_4__* vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef int vdev_initializing_state_t ;
struct TYPE_6__ {scalar_t__ spa_sync_on; } ;


 int spa_get_dsl (TYPE_4__*) ;
 int txg_wait_synced (int ,int ) ;
 int vdev_initialize_stop_all_impl (TYPE_1__*,int ) ;

void
vdev_initialize_stop_all(vdev_t *vd, vdev_initializing_state_t tgt_state)
{
 vdev_initialize_stop_all_impl(vd, tgt_state);

 if (vd->vdev_spa->spa_sync_on) {

  txg_wait_synced(spa_get_dsl(vd->vdev_spa), 0);
 }
}
