
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vdev_dtl_lock; int ** vdev_dtl; } ;
typedef TYPE_1__ vdev_t ;
typedef size_t vdev_dtl_type_t ;
typedef int range_tree_t ;
typedef int boolean_t ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int range_tree_is_empty (int *) ;

boolean_t
vdev_dtl_empty(vdev_t *vd, vdev_dtl_type_t t)
{
 range_tree_t *rt = vd->vdev_dtl[t];
 boolean_t empty;

 mutex_enter(&vd->vdev_dtl_lock);
 empty = range_tree_is_empty(rt);
 mutex_exit(&vd->vdev_dtl_lock);

 return (empty);
}
