
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int io_flags; int io_bp_orig; int * io_bp; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_5__ {int * os_synctx; int * os_dsl_dataset; } ;
typedef TYPE_2__ objset_t ;
typedef int dsl_dataset_t ;
typedef int dmu_tx_t ;
typedef int blkptr_t ;
typedef int arc_buf_t ;


 int ASSERT (int ) ;
 int BP_EQUAL (int *,int *) ;
 int B_TRUE ;
 int ZIO_FLAG_IO_REWRITE ;
 int dsl_dataset_block_born (int *,int *,int *) ;
 int dsl_dataset_block_kill (int *,int *,int *,int ) ;
 int kmem_free (int *,int) ;

__attribute__((used)) static void
dmu_objset_write_done(zio_t *zio, arc_buf_t *abuf, void *arg)
{
 blkptr_t *bp = zio->io_bp;
 blkptr_t *bp_orig = &zio->io_bp_orig;
 objset_t *os = arg;

 if (zio->io_flags & ZIO_FLAG_IO_REWRITE) {
  ASSERT(BP_EQUAL(bp, bp_orig));
 } else {
  dsl_dataset_t *ds = os->os_dsl_dataset;
  dmu_tx_t *tx = os->os_synctx;

  (void) dsl_dataset_block_kill(ds, bp_orig, tx, B_TRUE);
  dsl_dataset_block_born(ds, bp, tx);
 }
 kmem_free(bp, sizeof (*bp));
}
