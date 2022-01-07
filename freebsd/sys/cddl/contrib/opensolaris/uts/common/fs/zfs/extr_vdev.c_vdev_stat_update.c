
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef size_t zio_type_t ;
struct TYPE_20__ {scalar_t__ io_txg; size_t io_type; int io_flags; scalar_t__ io_error; TYPE_5__* io_vd; scalar_t__ io_gang_tree; TYPE_7__* io_spa; } ;
typedef TYPE_4__ zio_t ;
struct TYPE_22__ {scalar_t__ vs_scan_processed; int vs_write_errors; int vs_read_errors; int vs_checksum_errors; int * vs_bytes; int * vs_ops; int vs_self_healed; } ;
struct TYPE_21__ {int vdev_top; struct TYPE_21__* vdev_parent; TYPE_3__* vdev_ops; int vdev_stat_lock; TYPE_6__ vdev_stat; } ;
typedef TYPE_5__ vdev_t ;
typedef TYPE_6__ vdev_stat_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_23__ {scalar_t__ spa_load_state; scalar_t__ spa_claiming; TYPE_2__* spa_dsl_pool; TYPE_5__* spa_root_vdev; } ;
typedef TYPE_7__ spa_t ;
struct TYPE_24__ {scalar_t__ scn_processed; } ;
typedef TYPE_8__ dsl_scan_phys_t ;
struct TYPE_19__ {scalar_t__ vdev_op_leaf; } ;
struct TYPE_18__ {TYPE_1__* dp_scan; } ;
struct TYPE_17__ {TYPE_8__ scn_phys; } ;


 int ASSERT (int) ;
 int DTL_MISSING ;
 int DTL_PARTIAL ;
 int DTL_SCRUB ;
 scalar_t__ ECKSUM ;
 scalar_t__ EIO ;
 scalar_t__ SPA_LOAD_NONE ;
 int VDD_DTL ;
 int ZIO_FLAG_DONT_PROPAGATE ;
 int ZIO_FLAG_IO_BYPASS ;
 int ZIO_FLAG_IO_REPAIR ;
 int ZIO_FLAG_IO_RETRY ;
 int ZIO_FLAG_SCAN_THREAD ;
 int ZIO_FLAG_SELF_HEAL ;
 int ZIO_FLAG_SPECULATIVE ;
 size_t ZIO_TYPE_READ ;
 size_t ZIO_TYPE_WRITE ;
 int atomic_add_64 (scalar_t__*,scalar_t__) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ spa_first_txg (TYPE_7__*) ;
 int spa_sync_pass (TYPE_7__*) ;
 scalar_t__ spa_syncing_txg (TYPE_7__*) ;
 int vdev_dirty (int ,int ,TYPE_5__*,scalar_t__) ;
 scalar_t__ vdev_dtl_contains (TYPE_5__*,int ,scalar_t__,int) ;
 int vdev_dtl_dirty (TYPE_5__*,int ,scalar_t__,int) ;
 int vdev_is_dead (TYPE_5__*) ;

void
vdev_stat_update(zio_t *zio, uint64_t psize)
{
 spa_t *spa = zio->io_spa;
 vdev_t *rvd = spa->spa_root_vdev;
 vdev_t *vd = zio->io_vd ? zio->io_vd : rvd;
 vdev_t *pvd;
 uint64_t txg = zio->io_txg;
 vdev_stat_t *vs = &vd->vdev_stat;
 zio_type_t type = zio->io_type;
 int flags = zio->io_flags;




 if (zio->io_gang_tree)
  return;

 if (zio->io_error == 0) {
  if (vd == rvd)
   return;

  ASSERT(vd == zio->io_vd);

  if (flags & ZIO_FLAG_IO_BYPASS)
   return;

  mutex_enter(&vd->vdev_stat_lock);

  if (flags & ZIO_FLAG_IO_REPAIR) {
   if (flags & ZIO_FLAG_SCAN_THREAD) {
    dsl_scan_phys_t *scn_phys =
        &spa->spa_dsl_pool->dp_scan->scn_phys;
    uint64_t *processed = &scn_phys->scn_processed;


    if (vd->vdev_ops->vdev_op_leaf)
     atomic_add_64(processed, psize);
    vs->vs_scan_processed += psize;
   }

   if (flags & ZIO_FLAG_SELF_HEAL)
    vs->vs_self_healed += psize;
  }

  vs->vs_ops[type]++;
  vs->vs_bytes[type] += psize;

  mutex_exit(&vd->vdev_stat_lock);
  return;
 }

 if (flags & ZIO_FLAG_SPECULATIVE)
  return;







 if (zio->io_error == EIO &&
     !(zio->io_flags & ZIO_FLAG_IO_RETRY))
  return;






 if (zio->io_vd == ((void*)0) && (zio->io_flags & ZIO_FLAG_DONT_PROPAGATE))
  return;

 mutex_enter(&vd->vdev_stat_lock);
 if (type == ZIO_TYPE_READ && !vdev_is_dead(vd)) {
  if (zio->io_error == ECKSUM)
   vs->vs_checksum_errors++;
  else
   vs->vs_read_errors++;
 }
 if (type == ZIO_TYPE_WRITE && !vdev_is_dead(vd))
  vs->vs_write_errors++;
 mutex_exit(&vd->vdev_stat_lock);

 if (spa->spa_load_state == SPA_LOAD_NONE &&
     type == ZIO_TYPE_WRITE && txg != 0 &&
     (!(flags & ZIO_FLAG_IO_REPAIR) ||
     (flags & ZIO_FLAG_SCAN_THREAD) ||
     spa->spa_claiming)) {
  if (vd->vdev_ops->vdev_op_leaf) {
   uint64_t commit_txg = txg;
   if (flags & ZIO_FLAG_SCAN_THREAD) {
    ASSERT(flags & ZIO_FLAG_IO_REPAIR);
    ASSERT(spa_sync_pass(spa) == 1);
    vdev_dtl_dirty(vd, DTL_SCRUB, txg, 1);
    commit_txg = spa_syncing_txg(spa);
   } else if (spa->spa_claiming) {
    ASSERT(flags & ZIO_FLAG_IO_REPAIR);
    commit_txg = spa_first_txg(spa);
   }
   ASSERT(commit_txg >= spa_syncing_txg(spa));
   if (vdev_dtl_contains(vd, DTL_MISSING, txg, 1))
    return;
   for (pvd = vd; pvd != rvd; pvd = pvd->vdev_parent)
    vdev_dtl_dirty(pvd, DTL_PARTIAL, txg, 1);
   vdev_dirty(vd->vdev_top, VDD_DTL, vd, commit_txg);
  }
  if (vd != rvd)
   vdev_dtl_dirty(vd, DTL_MISSING, txg, 1);
 }
}
