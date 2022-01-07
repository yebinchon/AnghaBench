
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vdev_children; struct TYPE_4__** vdev_child; struct TYPE_4__* vdev_top; } ;
typedef TYPE_1__ vdev_t ;



__attribute__((used)) static void
vdev_top_update(vdev_t *tvd, vdev_t *vd)
{
 if (vd == ((void*)0))
  return;

 vd->vdev_top = tvd;

 for (int c = 0; c < vd->vdev_children; c++)
  vdev_top_update(tvd, vd->vdev_child[c]);
}
