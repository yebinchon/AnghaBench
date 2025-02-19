
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int vdev_children; struct TYPE_6__** vdev_child; TYPE_1__* vdev_ops; } ;
typedef TYPE_2__ vdev_t ;
typedef int spa_t ;
struct TYPE_5__ {scalar_t__ vdev_op_leaf; } ;


 int trim_map_vdev_commit_done (int *,TYPE_2__*) ;

__attribute__((used)) static void
trim_map_commit_done(spa_t *spa, vdev_t *vd)
{
 int c;

 if (vd == ((void*)0))
  return;

 if (vd->vdev_ops->vdev_op_leaf) {
  trim_map_vdev_commit_done(spa, vd);
 } else {
  for (c = 0; c < vd->vdev_children; c++)
   trim_map_commit_done(spa, vd->vdev_child[c]);
 }
}
