
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int vdev_ashift; int vdev_spa; } ;
typedef TYPE_2__ vdev_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_12__ {int sm_dbuf; } ;
typedef TYPE_3__ space_map_t ;
struct TYPE_13__ {scalar_t__ ms_condense_checked_txg; int ms_allocatable; TYPE_3__* ms_sm; scalar_t__ ms_condense_wanted; int ms_allocatable_by_size; int ms_loaded; int ms_lock; TYPE_1__* ms_group; } ;
typedef TYPE_4__ metaslab_t ;
struct TYPE_14__ {int doi_data_block_size; } ;
typedef TYPE_5__ dmu_object_info_t ;
typedef int boolean_t ;
struct TYPE_10__ {TYPE_2__* mg_vd; } ;


 int ASSERT (int ) ;
 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ MAX (int ,scalar_t__) ;
 int MUTEX_HELD (int *) ;
 int SM_NO_VDEVID ;
 scalar_t__ avl_is_empty (int *) ;
 int dmu_object_info_from_db (int ,TYPE_5__*) ;
 scalar_t__ spa_syncing_txg (int ) ;
 scalar_t__ space_map_estimate_optimal_size (TYPE_3__*,int ,int ) ;
 scalar_t__ space_map_length (TYPE_3__*) ;
 scalar_t__ zfs_condense_pct ;
 scalar_t__ zfs_metaslab_condense_block_threshold ;

__attribute__((used)) static boolean_t
metaslab_should_condense(metaslab_t *msp)
{
 space_map_t *sm = msp->ms_sm;
 vdev_t *vd = msp->ms_group->mg_vd;
 uint64_t vdev_blocksize = 1 << vd->vdev_ashift;
 uint64_t current_txg = spa_syncing_txg(vd->vdev_spa);

 ASSERT(MUTEX_HELD(&msp->ms_lock));
 ASSERT(msp->ms_loaded);
 if (msp->ms_condense_checked_txg == current_txg)
  return (B_FALSE);
 msp->ms_condense_checked_txg = current_txg;





 if (avl_is_empty(&msp->ms_allocatable_by_size) ||
     msp->ms_condense_wanted)
  return (B_TRUE);

 uint64_t object_size = space_map_length(msp->ms_sm);
 uint64_t optimal_size = space_map_estimate_optimal_size(sm,
     msp->ms_allocatable, SM_NO_VDEVID);

 dmu_object_info_t doi;
 dmu_object_info_from_db(sm->sm_dbuf, &doi);
 uint64_t record_size = MAX(doi.doi_data_block_size, vdev_blocksize);

 return (object_size >= (optimal_size * zfs_condense_pct / 100) &&
     object_size > zfs_metaslab_condense_block_threshold * record_size);
}
