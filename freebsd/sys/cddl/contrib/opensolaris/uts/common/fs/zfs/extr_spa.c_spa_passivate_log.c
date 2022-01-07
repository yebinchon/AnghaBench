
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int vdev_children; scalar_t__ vdev_islog; int * vdev_mg; struct TYPE_6__** vdev_child; } ;
typedef TYPE_1__ vdev_t ;
struct TYPE_7__ {TYPE_1__* spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;
typedef int metaslab_group_t ;
typedef int boolean_t ;


 int ASSERT (int ) ;
 int B_FALSE ;
 int B_TRUE ;
 int RW_WRITER ;
 int SCL_ALLOC ;
 int metaslab_group_passivate (int *) ;
 int spa_config_held (TYPE_2__*,int ,int ) ;
 int spa_has_slogs (TYPE_2__*) ;

__attribute__((used)) static boolean_t
spa_passivate_log(spa_t *spa)
{
 vdev_t *rvd = spa->spa_root_vdev;
 boolean_t slog_found = B_FALSE;

 ASSERT(spa_config_held(spa, SCL_ALLOC, RW_WRITER));

 if (!spa_has_slogs(spa))
  return (B_FALSE);

 for (int c = 0; c < rvd->vdev_children; c++) {
  vdev_t *tvd = rvd->vdev_child[c];
  metaslab_group_t *mg = tvd->vdev_mg;

  if (tvd->vdev_islog) {
   metaslab_group_passivate(mg);
   slog_found = B_TRUE;
  }
 }

 return (slog_found);
}
