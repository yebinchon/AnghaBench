
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int io_type; struct bio* io_bio; int io_size; int io_offset; int io_abd; int io_target_timestamp; void* io_error; int io_cmd; TYPE_3__* io_vd; } ;
typedef TYPE_2__ zio_t ;
struct TYPE_11__ {struct g_consumer* vdev_tsd; int vdev_notrim; int vdev_nowritecache; } ;
typedef TYPE_3__ vdev_t ;
struct g_consumer {TYPE_1__* provider; } ;
struct bio {int bio_done; int bio_length; int bio_offset; int * bio_data; int bio_cmd; TYPE_2__* bio_caller1; } ;
struct TYPE_9__ {int mediasize; } ;


 int ASSERT (int) ;
 int BIO_DELETE ;
 int BIO_FLUSH ;
 int BIO_READ ;
 int BIO_WRITE ;

 int ENOTSUP ;
 int ENXIO ;
 void* SET_ERROR (int ) ;




 int * abd_borrow_buf (int ,int ) ;
 int * abd_borrow_buf_copy (int ,int ) ;
 struct bio* g_alloc_bio () ;
 int g_io_request (struct bio*,struct g_consumer*) ;
 int vdev_geom_bio_delete_disable ;
 int vdev_geom_bio_flush_disable ;
 int vdev_geom_io_intr ;
 int vdev_readable (TYPE_3__*) ;
 int zfs_nocacheflush ;
 int zio_execute (TYPE_2__*) ;
 int zio_handle_io_delay (TYPE_2__*) ;
 int zio_interrupt (TYPE_2__*) ;

__attribute__((used)) static void
vdev_geom_io_start(zio_t *zio)
{
 vdev_t *vd;
 struct g_consumer *cp;
 struct bio *bp;
 int error;

 vd = zio->io_vd;

 switch (zio->io_type) {
 case 130:

  if (!vdev_readable(vd)) {
   zio->io_error = SET_ERROR(ENXIO);
   zio_interrupt(zio);
   return;
  } else {
   switch (zio->io_cmd) {
   case 132:
    if (zfs_nocacheflush || vdev_geom_bio_flush_disable)
     break;
    if (vd->vdev_nowritecache) {
     zio->io_error = SET_ERROR(ENOTSUP);
     break;
    }
    goto sendreq;
   default:
    zio->io_error = SET_ERROR(ENOTSUP);
   }
  }

  zio_execute(zio);
  return;
 case 131:
  if (vd->vdev_notrim) {
   zio->io_error = SET_ERROR(ENOTSUP);
  } else if (!vdev_geom_bio_delete_disable) {
   goto sendreq;
  }
  zio_execute(zio);
  return;
 }
sendreq:
 ASSERT(zio->io_type == 129 ||
     zio->io_type == 128 ||
     zio->io_type == 131 ||
     zio->io_type == 130);

 cp = vd->vdev_tsd;
 if (cp == ((void*)0)) {
  zio->io_error = SET_ERROR(ENXIO);
  zio_interrupt(zio);
  return;
 }
 bp = g_alloc_bio();
 bp->bio_caller1 = zio;
 switch (zio->io_type) {
 case 129:
 case 128:
  zio->io_target_timestamp = zio_handle_io_delay(zio);
  bp->bio_offset = zio->io_offset;
  bp->bio_length = zio->io_size;
  if (zio->io_type == 129) {
   bp->bio_cmd = BIO_READ;
   bp->bio_data =
       abd_borrow_buf(zio->io_abd, zio->io_size);
  } else {
   bp->bio_cmd = BIO_WRITE;
   bp->bio_data =
       abd_borrow_buf_copy(zio->io_abd, zio->io_size);
  }
  break;
 case 131:
  bp->bio_cmd = BIO_DELETE;
  bp->bio_data = ((void*)0);
  bp->bio_offset = zio->io_offset;
  bp->bio_length = zio->io_size;
  break;
 case 130:
  bp->bio_cmd = BIO_FLUSH;
  bp->bio_data = ((void*)0);
  bp->bio_offset = cp->provider->mediasize;
  bp->bio_length = 0;
  break;
 }
 bp->bio_done = vdev_geom_io_intr;
 zio->io_bio = bp;

 g_io_request(bp, cp);
}
