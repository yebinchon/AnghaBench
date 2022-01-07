
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int vdev_config_dirty_node; TYPE_2__* vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
struct TYPE_8__ {int spa_config_dirty_list; } ;
typedef TYPE_2__ spa_t ;


 int ASSERT (int) ;
 int RW_READER ;
 int RW_WRITER ;
 int SCL_CONFIG ;
 scalar_t__ dsl_pool_sync_context (int ) ;
 int list_link_active (int *) ;
 int list_remove (int *,TYPE_1__*) ;
 scalar_t__ spa_config_held (TYPE_2__*,int ,int ) ;
 int spa_get_dsl (TYPE_2__*) ;

void
vdev_config_clean(vdev_t *vd)
{
 spa_t *spa = vd->vdev_spa;

 ASSERT(spa_config_held(spa, SCL_CONFIG, RW_WRITER) ||
     (dsl_pool_sync_context(spa_get_dsl(spa)) &&
     spa_config_held(spa, SCL_CONFIG, RW_READER)));

 ASSERT(list_link_active(&vd->vdev_config_dirty_node));
 list_remove(&spa->spa_config_dirty_list, vd);
}
