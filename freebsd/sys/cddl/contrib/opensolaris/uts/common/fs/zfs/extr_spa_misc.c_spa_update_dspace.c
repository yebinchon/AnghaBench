
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ vs_space; scalar_t__ vs_dspace; } ;
struct TYPE_15__ {TYPE_1__ vdev_stat; } ;
typedef TYPE_3__ vdev_t ;
struct TYPE_16__ {scalar_t__ spa_dspace; TYPE_2__* spa_vdev_removal; } ;
typedef TYPE_4__ spa_t ;
struct TYPE_14__ {int svr_vdev_id; } ;


 int FTAG ;
 int RW_READER ;
 int SCL_VDEV ;
 scalar_t__ ddt_get_dedup_dspace (TYPE_4__*) ;
 scalar_t__ metaslab_class_get_dspace (int ) ;
 int spa_config_enter (TYPE_4__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_4__*,int ,int ) ;
 scalar_t__ spa_deflate (TYPE_4__*) ;
 int spa_normal_class (TYPE_4__*) ;
 TYPE_3__* vdev_lookup_top (TYPE_4__*,int ) ;

void
spa_update_dspace(spa_t *spa)
{
 spa->spa_dspace = metaslab_class_get_dspace(spa_normal_class(spa)) +
     ddt_get_dedup_dspace(spa);
 if (spa->spa_vdev_removal != ((void*)0)) {
  spa_config_enter(spa, SCL_VDEV, FTAG, RW_READER);
  vdev_t *vd =
      vdev_lookup_top(spa, spa->spa_vdev_removal->svr_vdev_id);
  spa->spa_dspace -= spa_deflate(spa) ?
      vd->vdev_stat.vs_dspace : vd->vdev_stat.vs_space;
  spa_config_exit(spa, SCL_VDEV, FTAG);
 }
}
