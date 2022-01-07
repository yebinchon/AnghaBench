
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int zl_spa; } ;
typedef TYPE_1__ zilog_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_10__ {scalar_t__ blk_birth; } ;
typedef TYPE_2__ blkptr_t ;


 scalar_t__ BP_IS_HOLE (TYPE_2__*) ;
 int ZIO_FLAG_CANFAIL ;
 int ZIO_FLAG_SCRUB ;
 int ZIO_FLAG_SPECULATIVE ;
 int spa_claim_notify ;
 scalar_t__ zil_bp_tree_add (TYPE_1__*,TYPE_2__*) ;
 int zio_claim (int *,int ,scalar_t__,TYPE_2__*,int ,int *,int) ;
 int zio_wait (int ) ;

__attribute__((used)) static int
zil_claim_log_block(zilog_t *zilog, blkptr_t *bp, void *tx, uint64_t first_txg)
{




 if (BP_IS_HOLE(bp) || bp->blk_birth < first_txg ||
     zil_bp_tree_add(zilog, bp) != 0)
  return (0);

 return (zio_wait(zio_claim(((void*)0), zilog->zl_spa,
     tx == ((void*)0) ? 0 : first_txg, bp, spa_claim_notify, ((void*)0),
     ZIO_FLAG_CANFAIL | ZIO_FLAG_SPECULATIVE | ZIO_FLAG_SCRUB)));
}
