
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdev_t ;


 int B_FALSE ;
 int VDEV_AUX_NONE ;
 int VDEV_AUX_NO_REPLICAS ;
 int VDEV_STATE_CANT_OPEN ;
 int VDEV_STATE_DEGRADED ;
 int VDEV_STATE_HEALTHY ;
 scalar_t__ too_many_errors (int *,int) ;
 int vdev_set_state (int *,int ,int ,int ) ;

__attribute__((used)) static void
vdev_root_state_change(vdev_t *vd, int faulted, int degraded)
{
 if (too_many_errors(vd, faulted)) {
  vdev_set_state(vd, B_FALSE, VDEV_STATE_CANT_OPEN,
      VDEV_AUX_NO_REPLICAS);
 } else if (degraded || faulted) {
  vdev_set_state(vd, B_FALSE, VDEV_STATE_DEGRADED, VDEV_AUX_NONE);
 } else {
  vdev_set_state(vd, B_FALSE, VDEV_STATE_HEALTHY, VDEV_AUX_NONE);
 }
}
