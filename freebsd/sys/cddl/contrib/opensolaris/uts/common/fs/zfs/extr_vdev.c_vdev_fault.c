
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {unsigned long long vdev_faulted; unsigned long long vdev_degraded; int * vdev_aux; int vdev_islog; int vdev_delayed_close; int vdev_label_aux; struct TYPE_10__* vdev_top; TYPE_1__* vdev_ops; } ;
typedef TYPE_2__ vdev_t ;
typedef int vdev_aux_t ;
typedef int uint64_t ;
typedef int spa_t ;
struct TYPE_9__ {int vdev_op_leaf; } ;


 int B_FALSE ;
 int B_TRUE ;
 int ENODEV ;
 int ENOTSUP ;
 int SCL_NONE ;
 int VDEV_STATE_DEGRADED ;
 int VDEV_STATE_FAULTED ;
 TYPE_2__* spa_lookup_by_guid (int *,int ,int ) ;
 int spa_vdev_state_enter (int *,int ) ;
 int spa_vdev_state_exit (int *,TYPE_2__*,int ) ;
 scalar_t__ vdev_dtl_required (TYPE_2__*) ;
 scalar_t__ vdev_readable (TYPE_2__*) ;
 int vdev_reopen (TYPE_2__*) ;
 int vdev_set_state (TYPE_2__*,int ,int ,int ) ;

int
vdev_fault(spa_t *spa, uint64_t guid, vdev_aux_t aux)
{
 vdev_t *vd, *tvd;

 spa_vdev_state_enter(spa, SCL_NONE);

 if ((vd = spa_lookup_by_guid(spa, guid, B_TRUE)) == ((void*)0))
  return (spa_vdev_state_exit(spa, ((void*)0), ENODEV));

 if (!vd->vdev_ops->vdev_op_leaf)
  return (spa_vdev_state_exit(spa, ((void*)0), ENOTSUP));

 tvd = vd->vdev_top;






 vd->vdev_label_aux = aux;




 vd->vdev_delayed_close = B_FALSE;
 vd->vdev_faulted = 1ULL;
 vd->vdev_degraded = 0ULL;
 vdev_set_state(vd, B_FALSE, VDEV_STATE_FAULTED, aux);





 if (!tvd->vdev_islog && vd->vdev_aux == ((void*)0) && vdev_dtl_required(vd)) {
  vd->vdev_degraded = 1ULL;
  vd->vdev_faulted = 0ULL;





  vdev_reopen(tvd);

  if (vdev_readable(vd))
   vdev_set_state(vd, B_FALSE, VDEV_STATE_DEGRADED, aux);
 }

 return (spa_vdev_state_exit(spa, vd, 0));
}
