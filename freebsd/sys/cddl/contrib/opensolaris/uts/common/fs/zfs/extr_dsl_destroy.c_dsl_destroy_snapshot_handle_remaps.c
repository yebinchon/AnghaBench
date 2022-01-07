
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_14__ {int dp_obsolete_bpobj; } ;
typedef TYPE_2__ dsl_pool_t ;
struct TYPE_15__ {int ds_remap_deadlist; int ds_remap_deadlist_lock; TYPE_1__* ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_16__ {int ds_prev_snap_txg; } ;
struct TYPE_13__ {TYPE_2__* dd_pool; } ;


 int ASSERT (int) ;
 int bpobj_is_open (int *) ;
 int dsl_dataset_create_remap_deadlist (TYPE_3__*,int *) ;
 int dsl_dataset_destroy_remap_deadlist (TYPE_3__*,int *) ;
 scalar_t__ dsl_dataset_get_remap_deadlist_object (TYPE_3__*) ;
 TYPE_8__* dsl_dataset_phys (TYPE_3__*) ;
 scalar_t__ dsl_dataset_remap_deadlist_exists (TYPE_3__*) ;
 int dsl_deadlist_merge (int *,scalar_t__,int *) ;
 int dsl_deadlist_move_bpobj (int *,int *,int ,int *) ;
 int dsl_pool_create_obsolete_bpobj (TYPE_2__*,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
dsl_destroy_snapshot_handle_remaps(dsl_dataset_t *ds, dsl_dataset_t *ds_next,
    dmu_tx_t *tx)
{
 dsl_pool_t *dp = ds->ds_dir->dd_pool;


 if (dsl_dataset_remap_deadlist_exists(ds_next)) {
  if (!bpobj_is_open(&dp->dp_obsolete_bpobj))
   dsl_pool_create_obsolete_bpobj(dp, tx);

  dsl_deadlist_move_bpobj(&ds_next->ds_remap_deadlist,
      &dp->dp_obsolete_bpobj,
      dsl_dataset_phys(ds)->ds_prev_snap_txg, tx);
 }


 if (dsl_dataset_remap_deadlist_exists(ds)) {
  uint64_t remap_deadlist_object =
      dsl_dataset_get_remap_deadlist_object(ds);
  ASSERT(remap_deadlist_object != 0);

  mutex_enter(&ds_next->ds_remap_deadlist_lock);
  if (!dsl_dataset_remap_deadlist_exists(ds_next))
   dsl_dataset_create_remap_deadlist(ds_next, tx);
  mutex_exit(&ds_next->ds_remap_deadlist_lock);

  dsl_deadlist_merge(&ds_next->ds_remap_deadlist,
      remap_deadlist_object, tx);
  dsl_dataset_destroy_remap_deadlist(ds, tx);
 }
}
