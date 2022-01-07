
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vdev_children; scalar_t__ vdev_islog; int * vdev_mg; struct TYPE_5__** vdev_child; } ;
typedef TYPE_1__ vdev_t ;
struct TYPE_6__ {TYPE_1__* spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;
typedef int metaslab_group_t ;


 int ASSERT (int ) ;
 int RW_WRITER ;
 int SCL_ALLOC ;
 int metaslab_group_activate (int *) ;
 int spa_config_held (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void
spa_activate_log(spa_t *spa)
{
 vdev_t *rvd = spa->spa_root_vdev;

 ASSERT(spa_config_held(spa, SCL_ALLOC, RW_WRITER));

 for (int c = 0; c < rvd->vdev_children; c++) {
  vdev_t *tvd = rvd->vdev_child[c];
  metaslab_group_t *mg = tvd->vdev_mg;

  if (tvd->vdev_islog)
   metaslab_group_activate(mg);
 }
}
