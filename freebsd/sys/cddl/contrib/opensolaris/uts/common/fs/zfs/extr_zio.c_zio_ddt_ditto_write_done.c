
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ zp_copies; } ;
struct TYPE_15__ {scalar_t__ io_error; int io_txg; TYPE_5__* io_private; int io_spa; TYPE_6__* io_bp; TYPE_2__ io_prop; } ;
typedef TYPE_1__ zio_t ;
typedef TYPE_2__ zio_prop_t ;
typedef int ddt_t ;
struct TYPE_17__ {scalar_t__ ddp_refcnt; scalar_t__ ddp_phys_birth; } ;
typedef TYPE_3__ ddt_phys_t ;
struct TYPE_18__ {int ddk_cksum; } ;
typedef TYPE_4__ ddt_key_t ;
struct TYPE_19__ {TYPE_1__** dde_lead_zio; TYPE_4__ dde_key; TYPE_3__* dde_phys; } ;
typedef TYPE_5__ ddt_entry_t ;
struct TYPE_20__ {int blk_cksum; } ;
typedef TYPE_6__ blkptr_t ;


 int ASSERT (int) ;
 scalar_t__ BP_GET_NDVAS (TYPE_6__*) ;
 scalar_t__ BP_IS_GANG (TYPE_6__*) ;
 int DDT_PHYS_DITTO ;
 scalar_t__ SPA_DVAS_PER_BP ;
 int ZIO_CHECKSUM_EQUAL (int ,int ) ;
 int ddt_enter (int *) ;
 int ddt_exit (int *) ;
 int ddt_phys_fill (TYPE_3__*,TYPE_6__*) ;
 int ddt_phys_free (int *,TYPE_4__*,TYPE_3__*,int ) ;
 int * ddt_select (int ,TYPE_6__*) ;

__attribute__((used)) static void
zio_ddt_ditto_write_done(zio_t *zio)
{
 int p = DDT_PHYS_DITTO;
 zio_prop_t *zp = &zio->io_prop;
 blkptr_t *bp = zio->io_bp;
 ddt_t *ddt = ddt_select(zio->io_spa, bp);
 ddt_entry_t *dde = zio->io_private;
 ddt_phys_t *ddp = &dde->dde_phys[p];
 ddt_key_t *ddk = &dde->dde_key;

 ddt_enter(ddt);

 ASSERT(ddp->ddp_refcnt == 0);
 ASSERT(dde->dde_lead_zio[p] == zio);
 dde->dde_lead_zio[p] = ((void*)0);

 if (zio->io_error == 0) {
  ASSERT(ZIO_CHECKSUM_EQUAL(bp->blk_cksum, ddk->ddk_cksum));
  ASSERT(zp->zp_copies < SPA_DVAS_PER_BP);
  ASSERT(zp->zp_copies == BP_GET_NDVAS(bp) - BP_IS_GANG(bp));
  if (ddp->ddp_phys_birth != 0)
   ddt_phys_free(ddt, ddk, ddp, zio->io_txg);
  ddt_phys_fill(ddp, bp);
 }

 ddt_exit(ddt);
}
