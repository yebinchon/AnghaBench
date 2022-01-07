
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int io_bookmark; int io_priority; int io_txg; int io_spa; int io_pipeline; TYPE_1__* io_gang_leader; } ;
typedef TYPE_2__ zio_t ;
struct TYPE_13__ {int gn_gbh; } ;
typedef TYPE_3__ zio_gang_node_t ;
typedef int uint64_t ;
typedef int blkptr_t ;
typedef int abd_t ;
struct TYPE_11__ {int io_flags; TYPE_3__* io_gang_tree; } ;


 int BP_GET_CHECKSUM (int *) ;
 int BP_GET_PSIZE (int *) ;
 int SPA_GANGBLOCKSIZE ;
 int ZIO_FLAG_INDUCE_DAMAGE ;
 int ZIO_GANG_CHILD_FLAGS (TYPE_2__*) ;
 int ZIO_VDEV_IO_STAGES ;
 int * abd_get_from_buf (int ,int ) ;
 int * abd_get_offset (int *,int ) ;
 int abd_put (int *) ;
 int zio_checksum_compute (TYPE_2__*,int ,int *,int ) ;
 int zio_gang_issue_func_done ;
 TYPE_2__* zio_rewrite (TYPE_2__*,int ,int ,int *,int *,int ,int ,int *,int ,int ,int *) ;

__attribute__((used)) static zio_t *
zio_rewrite_gang(zio_t *pio, blkptr_t *bp, zio_gang_node_t *gn, abd_t *data,
    uint64_t offset)
{
 zio_t *zio;

 if (gn != ((void*)0)) {
  abd_t *gbh_abd =
      abd_get_from_buf(gn->gn_gbh, SPA_GANGBLOCKSIZE);
  zio = zio_rewrite(pio, pio->io_spa, pio->io_txg, bp,
      gbh_abd, SPA_GANGBLOCKSIZE, zio_gang_issue_func_done, ((void*)0),
      pio->io_priority, ZIO_GANG_CHILD_FLAGS(pio),
      &pio->io_bookmark);
  if (gn != pio->io_gang_leader->io_gang_tree) {
   abd_t *buf = abd_get_offset(data, offset);

   zio_checksum_compute(zio, BP_GET_CHECKSUM(bp),
       buf, BP_GET_PSIZE(bp));

   abd_put(buf);
  }




  if (pio->io_gang_leader->io_flags & ZIO_FLAG_INDUCE_DAMAGE)
   zio->io_pipeline &= ~ZIO_VDEV_IO_STAGES;
 } else {
  zio = zio_rewrite(pio, pio->io_spa, pio->io_txg, bp,
      abd_get_offset(data, offset), BP_GET_PSIZE(bp),
      zio_gang_issue_func_done, ((void*)0), pio->io_priority,
      ZIO_GANG_CHILD_FLAGS(pio), &pio->io_bookmark);
 }

 return (zio);
}
