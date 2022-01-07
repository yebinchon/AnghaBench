
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {unsigned long long vdev_degraded; scalar_t__ vdev_faulted; TYPE_1__* vdev_ops; } ;
typedef TYPE_2__ vdev_t ;
typedef int vdev_aux_t ;
typedef int uint64_t ;
typedef int spa_t ;
struct TYPE_7__ {int vdev_op_leaf; } ;


 int B_FALSE ;
 int B_TRUE ;
 int ENODEV ;
 int ENOTSUP ;
 int SCL_NONE ;
 int VDEV_STATE_DEGRADED ;
 TYPE_2__* spa_lookup_by_guid (int *,int ,int ) ;
 int spa_vdev_state_enter (int *,int ) ;
 int spa_vdev_state_exit (int *,TYPE_2__*,int ) ;
 int vdev_is_dead (TYPE_2__*) ;
 int vdev_set_state (TYPE_2__*,int ,int ,int ) ;

int
vdev_degrade(spa_t *spa, uint64_t guid, vdev_aux_t aux)
{
 vdev_t *vd;

 spa_vdev_state_enter(spa, SCL_NONE);

 if ((vd = spa_lookup_by_guid(spa, guid, B_TRUE)) == ((void*)0))
  return (spa_vdev_state_exit(spa, ((void*)0), ENODEV));

 if (!vd->vdev_ops->vdev_op_leaf)
  return (spa_vdev_state_exit(spa, ((void*)0), ENOTSUP));




 if (vd->vdev_faulted || vd->vdev_degraded)
  return (spa_vdev_state_exit(spa, ((void*)0), 0));

 vd->vdev_degraded = 1ULL;
 if (!vdev_is_dead(vd))
  vdev_set_state(vd, B_FALSE, VDEV_STATE_DEGRADED,
      aux);

 return (spa_vdev_state_exit(spa, vd, 0));
}
