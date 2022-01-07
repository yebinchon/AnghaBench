
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vdev_children; struct TYPE_4__** vdev_child; scalar_t__ vdev_probe_wanted; } ;
typedef TYPE_1__ vdev_t ;
typedef int spa_t ;


 scalar_t__ B_FALSE ;
 int vdev_reopen (TYPE_1__*) ;

__attribute__((used)) static void
spa_async_probe(spa_t *spa, vdev_t *vd)
{
 if (vd->vdev_probe_wanted) {
  vd->vdev_probe_wanted = B_FALSE;
  vdev_reopen(vd);
 }

 for (int c = 0; c < vd->vdev_children; c++)
  spa_async_probe(spa, vd->vdev_child[c]);
}
