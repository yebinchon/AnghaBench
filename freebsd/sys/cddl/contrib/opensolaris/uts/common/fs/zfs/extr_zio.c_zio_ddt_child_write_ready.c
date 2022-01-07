
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int zp_copies; } ;
struct TYPE_8__ {int io_txg; int io_bp; scalar_t__ io_error; TYPE_3__* io_private; int io_spa; TYPE_1__ io_prop; } ;
typedef TYPE_2__ zio_t ;
typedef int zio_link_t ;
typedef int ddt_t ;
typedef int ddt_phys_t ;
struct TYPE_9__ {TYPE_2__** dde_lead_zio; int * dde_phys; } ;
typedef TYPE_3__ ddt_entry_t ;


 int ASSERT (int) ;
 int ddt_bp_fill (int *,int ,int ) ;
 int ddt_enter (int *) ;
 int ddt_exit (int *) ;
 int ddt_phys_fill (int *,int ) ;
 int * ddt_select (int ,int ) ;
 TYPE_2__* zio_walk_parents (TYPE_2__*,int **) ;

__attribute__((used)) static void
zio_ddt_child_write_ready(zio_t *zio)
{
 int p = zio->io_prop.zp_copies;
 ddt_t *ddt = ddt_select(zio->io_spa, zio->io_bp);
 ddt_entry_t *dde = zio->io_private;
 ddt_phys_t *ddp = &dde->dde_phys[p];
 zio_t *pio;

 if (zio->io_error)
  return;

 ddt_enter(ddt);

 ASSERT(dde->dde_lead_zio[p] == zio);

 ddt_phys_fill(ddp, zio->io_bp);

 zio_link_t *zl = ((void*)0);
 while ((pio = zio_walk_parents(zio, &zl)) != ((void*)0))
  ddt_bp_fill(ddp, pio->io_bp, zio->io_txg);

 ddt_exit(ddt);
}
