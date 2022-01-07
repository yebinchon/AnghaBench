
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ io_offset; int io_flags; scalar_t__ io_type; } ;
typedef TYPE_3__ zio_t ;
struct TYPE_11__ {int vs_aux; } ;
struct TYPE_14__ {scalar_t__ vdev_psize; scalar_t__ vdev_guid; TYPE_1__ vdev_stat; } ;
typedef TYPE_4__ vdev_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_12__ {scalar_t__ zi_cmd; scalar_t__ zi_guid; scalar_t__ zi_iotype; int zi_error; scalar_t__ zi_failfast; } ;
struct TYPE_15__ {TYPE_2__ zi_record; } ;
typedef TYPE_5__ inject_handler_t ;


 int EIO ;
 int ENXIO ;
 int RW_READER ;
 int SET_ERROR (int ) ;
 int VDEV_AUX_OPEN_FAILED ;
 scalar_t__ VDEV_LABEL_END_SIZE ;
 scalar_t__ VDEV_LABEL_START_SIZE ;
 scalar_t__ ZINJECT_DEVICE_FAULT ;
 int ZIO_FLAG_IO_RETRY ;
 int ZIO_FLAG_TRYHARD ;
 scalar_t__ ZIO_TYPES ;
 int inject_handlers ;
 int inject_lock ;
 TYPE_5__* list_head (int *) ;
 TYPE_5__* list_next (int *,TYPE_5__*) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;

int
zio_handle_device_injection(vdev_t *vd, zio_t *zio, int error)
{
 inject_handler_t *handler;
 int ret = 0;





 if (zio != ((void*)0)) {
  uint64_t offset = zio->io_offset;

  if (offset < VDEV_LABEL_START_SIZE ||
      offset >= vd->vdev_psize - VDEV_LABEL_END_SIZE)
   return (0);
 }

 rw_enter(&inject_lock, RW_READER);

 for (handler = list_head(&inject_handlers); handler != ((void*)0);
     handler = list_next(&inject_handlers, handler)) {

  if (handler->zi_record.zi_cmd != ZINJECT_DEVICE_FAULT)
   continue;

  if (vd->vdev_guid == handler->zi_record.zi_guid) {
   if (handler->zi_record.zi_failfast &&
       (zio == ((void*)0) || (zio->io_flags &
       (ZIO_FLAG_IO_RETRY | ZIO_FLAG_TRYHARD)))) {
    continue;
   }


   if (zio != ((void*)0) &&
       handler->zi_record.zi_iotype != ZIO_TYPES &&
       handler->zi_record.zi_iotype != zio->io_type)
    continue;

   if (handler->zi_record.zi_error == error) {




    if (error == ENXIO)
     vd->vdev_stat.vs_aux =
         VDEV_AUX_OPEN_FAILED;






    if (!handler->zi_record.zi_failfast &&
        zio != ((void*)0))
     zio->io_flags |= ZIO_FLAG_IO_RETRY;

    ret = error;
    break;
   }
   if (handler->zi_record.zi_error == ENXIO) {
    ret = SET_ERROR(EIO);
    break;
   }
  }
 }

 rw_exit(&inject_lock);

 return (ret);
}
