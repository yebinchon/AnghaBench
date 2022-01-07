
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ blk_birth; } ;
struct TYPE_12__ {int io_flags; scalar_t__ io_txg; int io_abd; int io_error; TYPE_4__* io_bp; int io_spa; TYPE_4__ io_bp_orig; TYPE_3__* io_private; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_13__ {int zgd_bp; int zgd_lwb; } ;
typedef TYPE_2__ zgd_t ;
struct TYPE_14__ {TYPE_2__* dsa_zgd; int (* dsa_done ) (TYPE_2__*,int ) ;int dsa_tx; } ;
typedef TYPE_3__ dmu_sync_arg_t ;
typedef TYPE_4__ blkptr_t ;


 int ASSERT (int) ;
 int BP_EQUAL (TYPE_4__*,TYPE_4__*) ;
 scalar_t__ BP_IS_HOLE (TYPE_4__*) ;
 int ZIO_FLAG_NOPWRITE ;
 int abd_put (int ) ;
 int dmu_tx_commit (int ) ;
 int kmem_free (TYPE_3__*,int) ;
 scalar_t__ spa_syncing_txg (int ) ;
 int stub1 (TYPE_2__*,int ) ;
 int zil_lwb_add_block (int ,int ) ;
 int zio_free (int ,scalar_t__,TYPE_4__*) ;

__attribute__((used)) static void
dmu_sync_late_arrival_done(zio_t *zio)
{
 blkptr_t *bp = zio->io_bp;
 dmu_sync_arg_t *dsa = zio->io_private;
 blkptr_t *bp_orig = &zio->io_bp_orig;
 zgd_t *zgd = dsa->dsa_zgd;

 if (zio->io_error == 0) {




  zil_lwb_add_block(zgd->zgd_lwb, zgd->zgd_bp);

  if (!BP_IS_HOLE(bp)) {
   ASSERT(!(zio->io_flags & ZIO_FLAG_NOPWRITE));
   ASSERT(BP_IS_HOLE(bp_orig) || !BP_EQUAL(bp, bp_orig));
   ASSERT(zio->io_bp->blk_birth == zio->io_txg);
   ASSERT(zio->io_txg > spa_syncing_txg(zio->io_spa));
   zio_free(zio->io_spa, zio->io_txg, zio->io_bp);
  }
 }

 dmu_tx_commit(dsa->dsa_tx);

 dsa->dsa_done(dsa->dsa_zgd, zio->io_error);

 abd_put(zio->io_abd);
 kmem_free(dsa, sizeof (*dsa));
}
