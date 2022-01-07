
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int vdev_dtl_lock; TYPE_1__* vdev_spa; int ** vdev_dtl; } ;
typedef TYPE_2__ vdev_t ;
typedef size_t vdev_dtl_type_t ;
typedef int uint64_t ;
typedef int range_tree_t ;
typedef int boolean_t ;
struct TYPE_4__ {scalar_t__ spa_load_state; TYPE_2__* spa_root_vdev; } ;


 int ASSERT (int) ;
 int B_FALSE ;
 size_t DTL_TYPES ;
 scalar_t__ SPA_LOAD_NONE ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int range_tree_contains (int *,int ,int ) ;
 int range_tree_is_empty (int *) ;

boolean_t
vdev_dtl_contains(vdev_t *vd, vdev_dtl_type_t t, uint64_t txg, uint64_t size)
{
 range_tree_t *rt = vd->vdev_dtl[t];
 boolean_t dirty = B_FALSE;

 ASSERT(t < DTL_TYPES);
 ASSERT(vd != vd->vdev_spa->spa_root_vdev);
 if (vd->vdev_spa->spa_load_state != SPA_LOAD_NONE)
  return (B_FALSE);

 mutex_enter(&vd->vdev_dtl_lock);
 if (!range_tree_is_empty(rt))
  dirty = range_tree_contains(rt, txg, size);
 mutex_exit(&vd->vdev_dtl_lock);

 return (dirty);
}
