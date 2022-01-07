
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * vdev_devid_vp; TYPE_3__* vdev_spa; int * vdev_name_vp; } ;
typedef TYPE_1__ vdev_t ;
struct TYPE_5__ {int spa_dsl_pool; } ;


 int ASSERT (int ) ;
 int RW_WRITER ;
 int SCL_STATE ;
 int VN_RELE_ASYNC (int *,int ) ;
 int dsl_pool_vnrele_taskq (int ) ;
 int spa_config_held (TYPE_3__*,int ,int ) ;

__attribute__((used)) static void
vdev_disk_rele(vdev_t *vd)
{
 ASSERT(spa_config_held(vd->vdev_spa, SCL_STATE, RW_WRITER));

 if (vd->vdev_name_vp) {
  VN_RELE_ASYNC(vd->vdev_name_vp,
      dsl_pool_vnrele_taskq(vd->vdev_spa->spa_dsl_pool));
  vd->vdev_name_vp = ((void*)0);
 }
 if (vd->vdev_devid_vp) {
  VN_RELE_ASYNC(vd->vdev_devid_vp,
      dsl_pool_vnrele_taskq(vd->vdev_spa->spa_dsl_pool));
  vd->vdev_devid_vp = ((void*)0);
 }
}
