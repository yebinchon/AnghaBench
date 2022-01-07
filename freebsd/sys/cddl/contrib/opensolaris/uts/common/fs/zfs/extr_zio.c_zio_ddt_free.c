
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ io_child_type; int * io_bp; int * io_spa; } ;
typedef TYPE_1__ zio_t ;
typedef int spa_t ;
typedef int ddt_t ;
typedef int ddt_phys_t ;
typedef int ddt_entry_t ;
typedef int blkptr_t ;


 int ASSERT (int) ;
 int BP_GET_DEDUP (int *) ;
 int B_TRUE ;
 scalar_t__ ZIO_CHILD_LOGICAL ;
 int ddt_enter (int *) ;
 int ddt_exit (int *) ;
 int * ddt_lookup (int *,int *,int ) ;
 int ddt_phys_decref (int *) ;
 int * ddt_phys_select (int *,int *) ;
 int * ddt_select (int *,int *) ;
 int * freedde ;

__attribute__((used)) static zio_t *
zio_ddt_free(zio_t *zio)
{
 spa_t *spa = zio->io_spa;
 blkptr_t *bp = zio->io_bp;
 ddt_t *ddt = ddt_select(spa, bp);
 ddt_entry_t *dde;
 ddt_phys_t *ddp;

 ASSERT(BP_GET_DEDUP(bp));
 ASSERT(zio->io_child_type == ZIO_CHILD_LOGICAL);

 ddt_enter(ddt);
 freedde = dde = ddt_lookup(ddt, bp, B_TRUE);
 ddp = ddt_phys_select(dde, bp);
 ddt_phys_decref(ddp);
 ddt_exit(ddt);

 return (zio);
}
