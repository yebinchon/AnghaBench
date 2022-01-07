
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ io_error; int io_lock; int * io_abd; TYPE_2__* io_private; int * io_bp; } ;
typedef TYPE_1__ zio_t ;
typedef int ddt_phys_t ;
struct TYPE_8__ {int * dde_repair_abd; } ;
typedef TYPE_2__ ddt_entry_t ;
typedef int blkptr_t ;


 int abd_free (int *) ;
 int ddt_phys_clear (int *) ;
 int * ddt_phys_select (TYPE_2__*,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 TYPE_1__* zio_unique_parent (TYPE_1__*) ;

__attribute__((used)) static void
zio_ddt_child_read_done(zio_t *zio)
{
 blkptr_t *bp = zio->io_bp;
 ddt_entry_t *dde = zio->io_private;
 ddt_phys_t *ddp;
 zio_t *pio = zio_unique_parent(zio);

 mutex_enter(&pio->io_lock);
 ddp = ddt_phys_select(dde, bp);
 if (zio->io_error == 0)
  ddt_phys_clear(ddp);

 if (zio->io_error == 0 && dde->dde_repair_abd == ((void*)0))
  dde->dde_repair_abd = zio->io_abd;
 else
  abd_free(zio->io_abd);
 mutex_exit(&pio->io_lock);
}
