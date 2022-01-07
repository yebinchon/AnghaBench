
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vdev_isspare; } ;
typedef TYPE_1__ vdev_t ;


 int ASSERT (int ) ;
 int B_FALSE ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_aux_remove (TYPE_1__*,int *) ;
 int spa_spare_avl ;
 int spa_spare_lock ;

void
spa_spare_remove(vdev_t *vd)
{
 mutex_enter(&spa_spare_lock);
 ASSERT(vd->vdev_isspare);
 spa_aux_remove(vd, &spa_spare_avl);
 vd->vdev_isspare = B_FALSE;
 mutex_exit(&spa_spare_lock);
}
