
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ vdev_state; TYPE_1__* vdev_mg; int vdev_cant_write; } ;
typedef TYPE_2__ vdev_t ;
typedef scalar_t__ uint64_t ;
typedef int boolean_t ;
struct TYPE_5__ {scalar_t__ mg_initialized; } ;


 scalar_t__ VDEV_STATE_CLOSED ;
 scalar_t__ VDEV_STATE_DEGRADED ;
 scalar_t__ vdev_is_concrete (TYPE_2__*) ;

boolean_t
vdev_allocatable(vdev_t *vd)
{
 uint64_t state = vd->vdev_state;
 return (!(state < VDEV_STATE_DEGRADED && state != VDEV_STATE_CLOSED) &&
     !vd->vdev_cant_write && vdev_is_concrete(vd) &&
     vd->vdev_mg->mg_initialized);
}
