
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int vdev_state_dirty_node; struct TYPE_9__* vdev_top; TYPE_2__* vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
struct TYPE_10__ {int spa_state_dirty_list; } ;
typedef TYPE_2__ spa_t ;


 int ASSERT (int) ;
 int RW_READER ;
 int RW_WRITER ;
 int SCL_STATE ;
 scalar_t__ dsl_pool_sync_context (int ) ;
 int list_insert_head (int *,TYPE_1__*) ;
 int list_link_active (int *) ;
 scalar_t__ spa_config_held (TYPE_2__*,int ,int ) ;
 int spa_get_dsl (TYPE_2__*) ;
 int spa_writeable (TYPE_2__*) ;
 scalar_t__ vdev_is_concrete (TYPE_1__*) ;

void
vdev_state_dirty(vdev_t *vd)
{
 spa_t *spa = vd->vdev_spa;

 ASSERT(spa_writeable(spa));
 ASSERT(vd == vd->vdev_top);







 ASSERT(spa_config_held(spa, SCL_STATE, RW_WRITER) ||
     (dsl_pool_sync_context(spa_get_dsl(spa)) &&
     spa_config_held(spa, SCL_STATE, RW_READER)));

 if (!list_link_active(&vd->vdev_state_dirty_node) &&
     vdev_is_concrete(vd))
  list_insert_head(&spa->spa_state_dirty_list, vd);
}
