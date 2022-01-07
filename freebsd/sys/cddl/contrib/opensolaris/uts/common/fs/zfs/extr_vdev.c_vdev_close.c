
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int vs_aux; } ;
struct TYPE_10__ {int vdev_reopening; TYPE_2__ vdev_stat; int vdev_state; scalar_t__ vdev_offline; int vdev_prevstate; TYPE_1__* vdev_ops; struct TYPE_10__* vdev_parent; int * vdev_spa; } ;
typedef TYPE_3__ vdev_t ;
typedef int spa_t ;
struct TYPE_8__ {scalar_t__ vdev_op_leaf; int (* vdev_op_close ) (TYPE_3__*) ;} ;


 int ASSERT (int) ;
 int RW_WRITER ;
 scalar_t__ SCL_STATE_ALL ;
 int VDEV_AUX_NONE ;
 int VDEV_STATE_CLOSED ;
 int VDEV_STATE_OFFLINE ;
 scalar_t__ spa_config_held (int *,scalar_t__,int ) ;
 int stub1 (TYPE_3__*) ;
 int trim_map_destroy (TYPE_3__*) ;
 int vdev_cache_purge (TYPE_3__*) ;

void
vdev_close(vdev_t *vd)
{
 spa_t *spa = vd->vdev_spa;
 vdev_t *pvd = vd->vdev_parent;

 ASSERT(spa_config_held(spa, SCL_STATE_ALL, RW_WRITER) == SCL_STATE_ALL);





 if (pvd != ((void*)0) && pvd->vdev_reopening)
  vd->vdev_reopening = (pvd->vdev_reopening && !vd->vdev_offline);

 vd->vdev_ops->vdev_op_close(vd);

 vdev_cache_purge(vd);

 if (vd->vdev_ops->vdev_op_leaf)
  trim_map_destroy(vd);






 vd->vdev_prevstate = vd->vdev_state;

 if (vd->vdev_offline)
  vd->vdev_state = VDEV_STATE_OFFLINE;
 else
  vd->vdev_state = VDEV_STATE_CLOSED;
 vd->vdev_stat.vs_aux = VDEV_AUX_NONE;
}
