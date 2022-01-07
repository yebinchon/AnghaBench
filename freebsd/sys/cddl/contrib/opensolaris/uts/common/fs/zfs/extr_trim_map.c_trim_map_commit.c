
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zio_t ;
struct TYPE_6__ {int vdev_children; struct TYPE_6__** vdev_child; TYPE_1__* vdev_ops; } ;
typedef TYPE_2__ vdev_t ;
typedef int spa_t ;
struct TYPE_5__ {scalar_t__ vdev_op_leaf; } ;


 int trim_map_vdev_commit (int *,int *,TYPE_2__*) ;

__attribute__((used)) static void
trim_map_commit(spa_t *spa, zio_t *zio, vdev_t *vd)
{
 int c;

 if (vd == ((void*)0))
  return;

 if (vd->vdev_ops->vdev_op_leaf) {
  trim_map_vdev_commit(spa, zio, vd);
 } else {
  for (c = 0; c < vd->vdev_children; c++)
   trim_map_commit(spa, zio, vd->vdev_child[c]);
 }
}
