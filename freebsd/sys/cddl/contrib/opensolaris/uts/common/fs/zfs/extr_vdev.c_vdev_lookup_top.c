
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t vdev_children; struct TYPE_6__** vdev_child; } ;
typedef TYPE_1__ vdev_t ;
typedef size_t uint64_t ;
struct TYPE_7__ {TYPE_1__* spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;


 int ASSERT (int) ;
 int RW_READER ;
 int SCL_ALL ;
 scalar_t__ spa_config_held (TYPE_2__*,int ,int ) ;

vdev_t *
vdev_lookup_top(spa_t *spa, uint64_t vdev)
{
 vdev_t *rvd = spa->spa_root_vdev;

 ASSERT(spa_config_held(spa, SCL_ALL, RW_READER) != 0);

 if (vdev < rvd->vdev_children) {
  ASSERT(rvd->vdev_child[vdev] != ((void*)0));
  return (rvd->vdev_child[vdev]);
 }

 return (((void*)0));
}
