
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int vdev_children; struct TYPE_7__** vdev_child; int vdev_dtl_lock; int * vdev_dtl; int * vdev_dtl_sm; int vdev_dtl_object; TYPE_1__* vdev_ops; TYPE_3__* vdev_spa; } ;
typedef TYPE_2__ vdev_t ;
struct TYPE_8__ {int * spa_meta_objset; } ;
typedef TYPE_3__ spa_t ;
typedef int objset_t ;
struct TYPE_6__ {scalar_t__ vdev_op_leaf; } ;


 int ASSERT (int ) ;
 size_t DTL_MISSING ;
 int SM_ALLOC ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int space_map_load (int *,int ,int ) ;
 int space_map_open (int **,int *,int ,int ,unsigned long long,int ) ;
 int space_map_update (int *) ;
 int vdev_is_concrete (TYPE_2__*) ;

int
vdev_dtl_load(vdev_t *vd)
{
 spa_t *spa = vd->vdev_spa;
 objset_t *mos = spa->spa_meta_objset;
 int error = 0;

 if (vd->vdev_ops->vdev_op_leaf && vd->vdev_dtl_object != 0) {
  ASSERT(vdev_is_concrete(vd));

  error = space_map_open(&vd->vdev_dtl_sm, mos,
      vd->vdev_dtl_object, 0, -1ULL, 0);
  if (error)
   return (error);
  ASSERT(vd->vdev_dtl_sm != ((void*)0));

  mutex_enter(&vd->vdev_dtl_lock);





  space_map_update(vd->vdev_dtl_sm);

  error = space_map_load(vd->vdev_dtl_sm,
      vd->vdev_dtl[DTL_MISSING], SM_ALLOC);
  mutex_exit(&vd->vdev_dtl_lock);

  return (error);
 }

 for (int c = 0; c < vd->vdev_children; c++) {
  error = vdev_dtl_load(vd->vdev_child[c]);
  if (error != 0)
   break;
 }

 return (error);
}
