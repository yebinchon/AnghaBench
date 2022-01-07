
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vdev_nparity; } ;
typedef TYPE_1__ vdev_t ;


 int B_FALSE ;
 int VDEV_AUX_NONE ;
 int VDEV_AUX_NO_REPLICAS ;
 int VDEV_STATE_CANT_OPEN ;
 int VDEV_STATE_DEGRADED ;
 int VDEV_STATE_HEALTHY ;
 int vdev_set_state (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static void
vdev_raidz_state_change(vdev_t *vd, int faulted, int degraded)
{
 if (faulted > vd->vdev_nparity)
  vdev_set_state(vd, B_FALSE, VDEV_STATE_CANT_OPEN,
      VDEV_AUX_NO_REPLICAS);
 else if (degraded + faulted != 0)
  vdev_set_state(vd, B_FALSE, VDEV_STATE_DEGRADED, VDEV_AUX_NONE);
 else
  vdev_set_state(vd, B_FALSE, VDEV_STATE_HEALTHY, VDEV_AUX_NONE);
}
