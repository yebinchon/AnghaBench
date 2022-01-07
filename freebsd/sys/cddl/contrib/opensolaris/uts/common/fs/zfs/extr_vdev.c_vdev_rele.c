
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int vdev_children; TYPE_1__* vdev_ops; struct TYPE_6__** vdev_child; int * vdev_spa; } ;
typedef TYPE_2__ vdev_t ;
typedef int spa_t ;
struct TYPE_5__ {int (* vdev_op_rele ) (TYPE_2__*) ;scalar_t__ vdev_op_leaf; } ;


 int ASSERT (int ) ;
 int spa_is_root (int *) ;
 int stub1 (TYPE_2__*) ;

void
vdev_rele(vdev_t *vd)
{
 spa_t *spa = vd->vdev_spa;

 ASSERT(spa_is_root(spa));
 for (int c = 0; c < vd->vdev_children; c++)
  vdev_rele(vd->vdev_child[c]);

 if (vd->vdev_ops->vdev_op_leaf)
  vd->vdev_ops->vdev_op_rele(vd);
}
