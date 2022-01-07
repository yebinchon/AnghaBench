
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint64_t ;
typedef int space_map_t ;
struct TYPE_17__ {int rt_root; } ;
typedef TYPE_4__ range_tree_t ;
struct TYPE_18__ {void* ms_condensing; int ms_lock; TYPE_4__* ms_allocatable; int * ms_allocating; int * ms_defer; int ms_freed; int ms_freeing; int ms_size; int ms_start; void* ms_condense_wanted; int * ms_sm; TYPE_3__* ms_group; int ms_id; int ms_loaded; } ;
typedef TYPE_5__ metaslab_t ;
typedef int dmu_tx_t ;
struct TYPE_16__ {TYPE_2__* mg_vd; } ;
struct TYPE_15__ {TYPE_1__* vdev_spa; int vdev_id; } ;
struct TYPE_14__ {int spa_name; } ;


 int ASSERT (int ) ;
 void* B_FALSE ;
 void* B_TRUE ;
 int MUTEX_HELD (int *) ;
 int SM_ALLOC ;
 int SM_FREE ;
 int SM_NO_VDEVID ;
 int TXG_CONCURRENT_STATES ;
 int TXG_DEFER_SIZE ;
 int TXG_MASK ;
 int avl_numnodes (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int range_tree_add (TYPE_4__*,int ,int ) ;
 TYPE_4__* range_tree_create (int *,int *) ;
 int range_tree_destroy (TYPE_4__*) ;
 int range_tree_remove ;
 int range_tree_vacate (TYPE_4__*,int *,int *) ;
 int range_tree_walk (int ,int ,TYPE_4__*) ;
 int space_map_length (int *) ;
 int space_map_truncate (int *,int ,int *) ;
 int space_map_write (int *,TYPE_4__*,int ,int ,int *) ;
 int zfs_dbgmsg (char*,int,int ,TYPE_5__*,int ,int ,int ,int ,char*) ;
 int zfs_metaslab_sm_blksz ;

__attribute__((used)) static void
metaslab_condense(metaslab_t *msp, uint64_t txg, dmu_tx_t *tx)
{
 range_tree_t *condense_tree;
 space_map_t *sm = msp->ms_sm;

 ASSERT(MUTEX_HELD(&msp->ms_lock));
 ASSERT(msp->ms_loaded);

 zfs_dbgmsg("condensing: txg %llu, msp[%llu] %p, vdev id %llu, "
     "spa %s, smp size %llu, segments %lu, forcing condense=%s", txg,
     msp->ms_id, msp, msp->ms_group->mg_vd->vdev_id,
     msp->ms_group->mg_vd->vdev_spa->spa_name,
     space_map_length(msp->ms_sm),
     avl_numnodes(&msp->ms_allocatable->rt_root),
     msp->ms_condense_wanted ? "TRUE" : "FALSE");

 msp->ms_condense_wanted = B_FALSE;
 condense_tree = range_tree_create(((void*)0), ((void*)0));
 range_tree_add(condense_tree, msp->ms_start, msp->ms_size);

 range_tree_walk(msp->ms_freeing, range_tree_remove, condense_tree);
 range_tree_walk(msp->ms_freed, range_tree_remove, condense_tree);

 for (int t = 0; t < TXG_DEFER_SIZE; t++) {
  range_tree_walk(msp->ms_defer[t],
      range_tree_remove, condense_tree);
 }

 for (int t = 1; t < TXG_CONCURRENT_STATES; t++) {
  range_tree_walk(msp->ms_allocating[(txg + t) & TXG_MASK],
      range_tree_remove, condense_tree);
 }
 msp->ms_condensing = B_TRUE;

 mutex_exit(&msp->ms_lock);
 space_map_truncate(sm, zfs_metaslab_sm_blksz, tx);
 space_map_write(sm, condense_tree, SM_ALLOC, SM_NO_VDEVID, tx);
 range_tree_vacate(condense_tree, ((void*)0), ((void*)0));
 range_tree_destroy(condense_tree);

 space_map_write(sm, msp->ms_allocatable, SM_FREE, SM_NO_VDEVID, tx);
 mutex_enter(&msp->ms_lock);
 msp->ms_condensing = B_FALSE;
}
