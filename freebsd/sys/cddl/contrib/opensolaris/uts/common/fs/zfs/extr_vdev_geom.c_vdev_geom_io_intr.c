
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int io_error; scalar_t__ io_type; int * io_bio; int io_spa; TYPE_3__* io_vd; } ;
typedef TYPE_2__ zio_t ;
struct TYPE_7__ {void* vdev_delayed_close; void* vdev_remove_wanted; void* vdev_notrim; void* vdev_nowritecache; } ;
typedef TYPE_3__ vdev_t ;
struct bio {int bio_error; scalar_t__ bio_resid; TYPE_1__* bio_to; int bio_cmd; TYPE_2__* bio_caller1; } ;
struct TYPE_5__ {int error; } ;




 void* B_TRUE ;
 int EIO ;


 int SET_ERROR (int ) ;
 int SPA_ASYNC_REMOVE ;
 scalar_t__ ZIO_TYPE_READ ;
 scalar_t__ ZIO_TYPE_WRITE ;
 int g_destroy_bio (struct bio*) ;
 int spa_async_request (int ,int ) ;
 int zio_delay_interrupt (TYPE_2__*) ;

__attribute__((used)) static void
vdev_geom_io_intr(struct bio *bp)
{
 vdev_t *vd;
 zio_t *zio;

 zio = bp->bio_caller1;
 vd = zio->io_vd;
 zio->io_error = bp->bio_error;
 if (zio->io_error == 0 && bp->bio_resid != 0)
  zio->io_error = SET_ERROR(EIO);

 switch(zio->io_error) {
 case 129:






  switch(bp->bio_cmd) {
  case 130:
   vd->vdev_nowritecache = B_TRUE;
   break;
  case 131:
   vd->vdev_notrim = B_TRUE;
   break;
  }
  break;
 case 128:
  if (!vd->vdev_remove_wanted) {




   if (bp->bio_to->error != 0) {
    vd->vdev_remove_wanted = B_TRUE;
    spa_async_request(zio->io_spa,
        SPA_ASYNC_REMOVE);
   } else if (!vd->vdev_delayed_close) {
    vd->vdev_delayed_close = B_TRUE;
   }
  }
  break;
 }






 if (zio->io_type != ZIO_TYPE_READ && zio->io_type != ZIO_TYPE_WRITE) {
  g_destroy_bio(bp);
  zio->io_bio = ((void*)0);
 }
 zio_delay_interrupt(zio);
}
