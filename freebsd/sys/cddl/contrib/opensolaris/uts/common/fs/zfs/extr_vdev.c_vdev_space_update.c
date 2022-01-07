
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int vs_alloc; int vs_space; int vs_dspace; } ;
struct TYPE_8__ {int vdev_deflate_ratio; scalar_t__ vdev_ms_count; struct TYPE_8__* vdev_parent; int vdev_stat_lock; TYPE_1__ vdev_stat; scalar_t__ vdev_isl2cache; struct TYPE_8__* vdev_top; TYPE_4__* vdev_mg; TYPE_3__* vdev_spa; } ;
typedef TYPE_2__ vdev_t ;
struct TYPE_9__ {TYPE_2__* spa_root_vdev; } ;
typedef TYPE_3__ spa_t ;
struct TYPE_10__ {int * mg_class; } ;
typedef TYPE_4__ metaslab_group_t ;
typedef int metaslab_class_t ;
typedef int int64_t ;


 int ASSERT (int) ;
 int SPA_MINBLOCKSHIFT ;
 int SPA_MINBLOCKSIZE ;
 int metaslab_class_space_update (int *,int,int,int,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int * spa_normal_class (TYPE_3__*) ;

void
vdev_space_update(vdev_t *vd, int64_t alloc_delta, int64_t defer_delta,
    int64_t space_delta)
{
 int64_t dspace_delta = space_delta;
 spa_t *spa = vd->vdev_spa;
 vdev_t *rvd = spa->spa_root_vdev;
 metaslab_group_t *mg = vd->vdev_mg;
 metaslab_class_t *mc = mg ? mg->mg_class : ((void*)0);

 ASSERT(vd == vd->vdev_top);







 ASSERT((dspace_delta & (SPA_MINBLOCKSIZE-1)) == 0);
 ASSERT(vd->vdev_deflate_ratio != 0 || vd->vdev_isl2cache);
 dspace_delta = (dspace_delta >> SPA_MINBLOCKSHIFT) *
     vd->vdev_deflate_ratio;

 mutex_enter(&vd->vdev_stat_lock);
 vd->vdev_stat.vs_alloc += alloc_delta;
 vd->vdev_stat.vs_space += space_delta;
 vd->vdev_stat.vs_dspace += dspace_delta;
 mutex_exit(&vd->vdev_stat_lock);

 if (mc == spa_normal_class(spa)) {
  mutex_enter(&rvd->vdev_stat_lock);
  rvd->vdev_stat.vs_alloc += alloc_delta;
  rvd->vdev_stat.vs_space += space_delta;
  rvd->vdev_stat.vs_dspace += dspace_delta;
  mutex_exit(&rvd->vdev_stat_lock);
 }

 if (mc != ((void*)0)) {
  ASSERT(rvd == vd->vdev_parent);
  ASSERT(vd->vdev_ms_count != 0);

  metaslab_class_space_update(mc,
      alloc_delta, defer_delta, space_delta, dspace_delta);
 }
}
