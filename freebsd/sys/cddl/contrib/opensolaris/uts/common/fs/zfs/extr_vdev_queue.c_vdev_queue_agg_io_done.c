
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ io_type; int io_abd; int io_size; scalar_t__ io_offset; } ;
typedef TYPE_1__ zio_t ;
typedef int zio_link_t ;


 scalar_t__ ZIO_TYPE_READ ;
 int abd_copy_off (int ,int ,int ,scalar_t__,int ) ;
 int abd_free (int ) ;
 TYPE_1__* zio_walk_parents (TYPE_1__*,int **) ;

__attribute__((used)) static void
vdev_queue_agg_io_done(zio_t *aio)
{
 if (aio->io_type == ZIO_TYPE_READ) {
  zio_t *pio;
  zio_link_t *zl = ((void*)0);
  while ((pio = zio_walk_parents(aio, &zl)) != ((void*)0)) {
   abd_copy_off(pio->io_abd, aio->io_abd,
       0, pio->io_offset - aio->io_offset, pio->io_size);
  }
 }

 abd_free(aio->io_abd);
}
