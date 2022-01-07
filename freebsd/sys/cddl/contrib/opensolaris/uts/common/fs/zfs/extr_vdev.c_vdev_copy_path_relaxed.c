
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * vdev_child; int * vdev_ops; int vdev_children; } ;
typedef TYPE_1__ vdev_t ;
typedef size_t uint64_t ;


 int ASSERT (int) ;
 size_t MIN (int ,int ) ;
 int vdev_copy_path_search (int ,int ) ;
 int vdev_root_ops ;

void
vdev_copy_path_relaxed(vdev_t *srvd, vdev_t *drvd)
{
 uint64_t children = MIN(srvd->vdev_children, drvd->vdev_children);
 ASSERT(srvd->vdev_ops == &vdev_root_ops);
 ASSERT(drvd->vdev_ops == &vdev_root_ops);

 for (uint64_t i = 0; i < children; i++) {
  vdev_copy_path_search(srvd->vdev_child[i],
      drvd->vdev_child[i]);
 }
}
