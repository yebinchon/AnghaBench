
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int vdev_top_zap; int vdev_spa; TYPE_5__* vdev_checkpoint_sm; int vdev_id; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint64_t ;
struct TYPE_14__ {int sdc_entry_limit; int sdc_txg; TYPE_1__* sdc_vd; } ;
typedef TYPE_2__ spa_checkpoint_discard_sync_callback_arg_t ;
struct TYPE_15__ {int tx_txg; } ;
typedef TYPE_3__ dmu_tx_t ;
struct TYPE_16__ {int sm_alloc; } ;


 int ASSERT0 (int) ;
 int EINTR ;
 int VDEV_TOP_ZAP_POOL_CHECKPOINT_SM ;
 int VERIFY0 (int ) ;
 int spa_checkpoint_accounting_verify (int ) ;
 int spa_checkpoint_discard_sync_callback ;
 int spa_meta_objset (int ) ;
 int space_map_close (TYPE_5__*) ;
 int space_map_free (TYPE_5__*,TYPE_3__*) ;
 int space_map_incremental_destroy (TYPE_5__*,int ,TYPE_2__*,TYPE_3__*) ;
 int space_map_length (TYPE_5__*) ;
 int zap_remove (int ,int ,int ,TYPE_3__*) ;
 int zfs_dbgmsg (char*,int ,int ,int,int) ;
 int zfs_panic_recover (char*,int,int ) ;
 int zfs_spa_discard_memory_limit ;

__attribute__((used)) static void
spa_checkpoint_discard_thread_sync(void *arg, dmu_tx_t *tx)
{
 vdev_t *vd = arg;
 int error;
 uint64_t max_entry_limit =
     (zfs_spa_discard_memory_limit / (2 * sizeof (uint64_t))) >> 1;
 spa_checkpoint_discard_sync_callback_arg_t sdc;
 sdc.sdc_vd = vd;
 sdc.sdc_txg = tx->tx_txg;
 sdc.sdc_entry_limit = max_entry_limit;

 uint64_t words_before =
     space_map_length(vd->vdev_checkpoint_sm) / sizeof (uint64_t);

 error = space_map_incremental_destroy(vd->vdev_checkpoint_sm,
     spa_checkpoint_discard_sync_callback, &sdc, tx);

 uint64_t words_after =
     space_map_length(vd->vdev_checkpoint_sm) / sizeof (uint64_t);





 zfs_dbgmsg("discarding checkpoint: txg %llu, vdev id %d, "
     "deleted %llu words - %llu words are left",
     tx->tx_txg, vd->vdev_id, (words_before - words_after),
     words_after);

 if (error != EINTR) {
  if (error != 0) {
   zfs_panic_recover("zfs: error %d was returned "
       "while incrementally destroying the checkpoint "
       "space map of vdev %llu\n",
       error, vd->vdev_id);
  }
  ASSERT0(words_after);
  ASSERT0(vd->vdev_checkpoint_sm->sm_alloc);
  ASSERT0(space_map_length(vd->vdev_checkpoint_sm));

  space_map_free(vd->vdev_checkpoint_sm, tx);
  space_map_close(vd->vdev_checkpoint_sm);
  vd->vdev_checkpoint_sm = ((void*)0);

  VERIFY0(zap_remove(spa_meta_objset(vd->vdev_spa),
      vd->vdev_top_zap, VDEV_TOP_ZAP_POOL_CHECKPOINT_SM, tx));
 }
}
