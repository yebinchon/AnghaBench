
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t vdev_children; int * vdev_child; } ;
typedef TYPE_1__ vdev_t ;
typedef size_t uint64_t ;
struct TYPE_5__ {TYPE_1__* spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int vdev_is_spacemap_addressable (int ) ;

boolean_t
spa_top_vdevs_spacemap_addressable(spa_t *spa)
{
 vdev_t *rvd = spa->spa_root_vdev;
 for (uint64_t c = 0; c < rvd->vdev_children; c++) {
  if (!vdev_is_spacemap_addressable(rvd->vdev_child[c]))
   return (B_FALSE);
 }
 return (B_TRUE);
}
