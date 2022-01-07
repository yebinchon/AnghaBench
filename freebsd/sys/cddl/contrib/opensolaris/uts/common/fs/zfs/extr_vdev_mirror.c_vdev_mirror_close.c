
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vdev_children; int * vdev_child; } ;
typedef TYPE_1__ vdev_t ;


 int vdev_close (int ) ;

__attribute__((used)) static void
vdev_mirror_close(vdev_t *vd)
{
 for (int c = 0; c < vd->vdev_children; c++)
  vdev_close(vd->vdev_child[c]);
}
