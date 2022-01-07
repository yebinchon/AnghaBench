
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ vdev_removing; int * vdev_spa; } ;
typedef TYPE_4__ vdev_t ;
typedef int uint64_t ;
typedef int space_map_phys_t ;
typedef int spa_t ;
struct TYPE_15__ {TYPE_2__* ms_sm; int ms_max_size; scalar_t__ ms_loaded; int ms_lock; TYPE_3__* ms_group; } ;
typedef TYPE_5__ metaslab_t ;
struct TYPE_13__ {TYPE_4__* mg_vd; } ;
struct TYPE_12__ {TYPE_1__* sm_dbuf; } ;
struct TYPE_11__ {int db_size; } ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int SPA_FEATURE_SPACEMAP_HISTOGRAM ;
 int metaslab_block_maxsize (TYPE_5__*) ;
 int metaslab_segment_weight (TYPE_5__*) ;
 int metaslab_set_fragmentation (TYPE_5__*) ;
 int metaslab_space_weight (TYPE_5__*) ;
 scalar_t__ spa_feature_is_enabled (int *,int ) ;
 scalar_t__ zfs_metaslab_segment_weight_enabled ;

__attribute__((used)) static uint64_t
metaslab_weight(metaslab_t *msp)
{
 vdev_t *vd = msp->ms_group->mg_vd;
 spa_t *spa = vd->vdev_spa;
 uint64_t weight;

 ASSERT(MUTEX_HELD(&msp->ms_lock));





 if (vd->vdev_removing)
  return (0);

 metaslab_set_fragmentation(msp);






 if (msp->ms_loaded)
  msp->ms_max_size = metaslab_block_maxsize(msp);




 if (zfs_metaslab_segment_weight_enabled &&
     spa_feature_is_enabled(spa, SPA_FEATURE_SPACEMAP_HISTOGRAM) &&
     (msp->ms_sm == ((void*)0) || msp->ms_sm->sm_dbuf->db_size ==
     sizeof (space_map_phys_t))) {
  weight = metaslab_segment_weight(msp);
 } else {
  weight = metaslab_space_weight(msp);
 }
 return (weight);
}
