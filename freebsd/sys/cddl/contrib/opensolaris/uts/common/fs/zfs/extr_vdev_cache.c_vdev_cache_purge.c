
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int vc_lock; int vc_offset_tree; } ;
struct TYPE_5__ {TYPE_2__ vdev_cache; } ;
typedef TYPE_1__ vdev_t ;
typedef TYPE_2__ vdev_cache_t ;
typedef int vdev_cache_entry_t ;


 int * avl_first (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int vdev_cache_evict (TYPE_2__*,int *) ;

void
vdev_cache_purge(vdev_t *vd)
{
 vdev_cache_t *vc = &vd->vdev_cache;
 vdev_cache_entry_t *ve;

 mutex_enter(&vc->vc_lock);
 while ((ve = avl_first(&vc->vc_offset_tree)) != ((void*)0))
  vdev_cache_evict(vc, ve);
 mutex_exit(&vc->vc_lock);
}
