
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vdev_dtl_lock; TYPE_3__* vdev_spa; int ** vdev_dtl; } ;
typedef TYPE_1__ vdev_t ;
typedef size_t vdev_dtl_type_t ;
typedef int uint64_t ;
typedef int range_tree_t ;
struct TYPE_5__ {TYPE_1__* spa_root_vdev; } ;


 int ASSERT (int) ;
 size_t DTL_TYPES ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int range_tree_add (int *,int ,int ) ;
 int range_tree_contains (int *,int ,int ) ;
 int spa_writeable (TYPE_3__*) ;

void
vdev_dtl_dirty(vdev_t *vd, vdev_dtl_type_t t, uint64_t txg, uint64_t size)
{
 range_tree_t *rt = vd->vdev_dtl[t];

 ASSERT(t < DTL_TYPES);
 ASSERT(vd != vd->vdev_spa->spa_root_vdev);
 ASSERT(spa_writeable(vd->vdev_spa));

 mutex_enter(&vd->vdev_dtl_lock);
 if (!range_tree_contains(rt, txg, size))
  range_tree_add(rt, txg, size);
 mutex_exit(&vd->vdev_dtl_lock);
}
