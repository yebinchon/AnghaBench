
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zp_copies; scalar_t__ zp_nopwrite; int zp_dedup; } ;
struct TYPE_5__ {scalar_t__ io_type; scalar_t__ io_child_type; scalar_t__ io_stage; scalar_t__ io_txg; int * io_bp_override; TYPE_1__ io_prop; int io_spa; } ;
typedef TYPE_2__ zio_t ;
typedef scalar_t__ boolean_t ;
typedef int blkptr_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 scalar_t__ ZIO_CHILD_LOGICAL ;
 scalar_t__ ZIO_STAGE_OPEN ;
 scalar_t__ ZIO_TYPE_WRITE ;
 scalar_t__ spa_syncing_txg (int ) ;

void
zio_write_override(zio_t *zio, blkptr_t *bp, int copies, boolean_t nopwrite)
{
 ASSERT(zio->io_type == ZIO_TYPE_WRITE);
 ASSERT(zio->io_child_type == ZIO_CHILD_LOGICAL);
 ASSERT(zio->io_stage == ZIO_STAGE_OPEN);
 ASSERT(zio->io_txg == spa_syncing_txg(zio->io_spa));






 zio->io_prop.zp_dedup = nopwrite ? B_FALSE : zio->io_prop.zp_dedup;
 zio->io_prop.zp_nopwrite = nopwrite;
 zio->io_prop.zp_copies = copies;
 zio->io_bp_override = bp;
}
