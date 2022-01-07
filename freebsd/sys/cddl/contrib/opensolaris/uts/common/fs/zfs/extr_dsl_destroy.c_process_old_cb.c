
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;


struct process_old_arg {int pio; int uncomp; int comp; int used; TYPE_12__* ds_prev; int after_branch_point; TYPE_12__* ds; } ;
struct TYPE_20__ {int dp_spa; } ;
typedef TYPE_2__ dsl_pool_t ;
struct TYPE_21__ {int tx_txg; } ;
typedef TYPE_3__ dmu_tx_t ;
struct TYPE_22__ {scalar_t__ blk_birth; } ;
typedef TYPE_4__ blkptr_t ;
struct TYPE_19__ {TYPE_2__* dd_pool; } ;
struct TYPE_18__ {int ds_deadlist; TYPE_1__* ds_dir; } ;
struct TYPE_17__ {scalar_t__ ds_prev_snap_txg; int ds_unique_bytes; } ;


 int ASSERT (int) ;
 scalar_t__ BP_GET_PSIZE (TYPE_4__ const*) ;
 scalar_t__ BP_GET_UCSIZE (TYPE_4__ const*) ;
 int BP_IS_HOLE (TYPE_4__ const*) ;
 scalar_t__ bp_get_dsize_sync (int ,TYPE_4__ const*) ;
 TYPE_11__* dsl_dataset_phys (TYPE_12__*) ;
 int dsl_deadlist_insert (int *,TYPE_4__ const*,TYPE_3__*) ;
 int dsl_free_sync (int ,TYPE_2__*,int ,TYPE_4__ const*) ;

__attribute__((used)) static int
process_old_cb(void *arg, const blkptr_t *bp, dmu_tx_t *tx)
{
 struct process_old_arg *poa = arg;
 dsl_pool_t *dp = poa->ds->ds_dir->dd_pool;

 ASSERT(!BP_IS_HOLE(bp));

 if (bp->blk_birth <= dsl_dataset_phys(poa->ds)->ds_prev_snap_txg) {
  dsl_deadlist_insert(&poa->ds->ds_deadlist, bp, tx);
  if (poa->ds_prev && !poa->after_branch_point &&
      bp->blk_birth >
      dsl_dataset_phys(poa->ds_prev)->ds_prev_snap_txg) {
   dsl_dataset_phys(poa->ds_prev)->ds_unique_bytes +=
       bp_get_dsize_sync(dp->dp_spa, bp);
  }
 } else {
  poa->used += bp_get_dsize_sync(dp->dp_spa, bp);
  poa->comp += BP_GET_PSIZE(bp);
  poa->uncomp += BP_GET_UCSIZE(bp);
  dsl_free_sync(poa->pio, dp, tx->tx_txg, bp);
 }
 return (0);
}
