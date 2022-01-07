
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ vdev_guid; int vdev_children; struct TYPE_4__** vdev_child; } ;
typedef TYPE_1__ vdev_t ;
typedef scalar_t__ uint64_t ;



vdev_t *
vdev_lookup_by_guid(vdev_t *vd, uint64_t guid)
{
 vdev_t *mvd;

 if (vd->vdev_guid == guid)
  return (vd);

 for (int c = 0; c < vd->vdev_children; c++)
  if ((mvd = vdev_lookup_by_guid(vd->vdev_child[c], guid)) !=
      ((void*)0))
   return (mvd);

 return (((void*)0));
}
