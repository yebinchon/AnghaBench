
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ io_offset; TYPE_3__* io_vd; } ;
typedef TYPE_2__ zio_t ;
struct TYPE_11__ {scalar_t__ vdev_psize; scalar_t__ vdev_guid; } ;
typedef TYPE_3__ vdev_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_9__ {scalar_t__ zi_start; scalar_t__ zi_end; scalar_t__ zi_cmd; scalar_t__ zi_guid; } ;
struct TYPE_12__ {TYPE_1__ zi_record; } ;
typedef TYPE_4__ inject_handler_t ;


 int RW_READER ;
 scalar_t__ VDEV_LABEL_END_SIZE ;
 scalar_t__ VDEV_LABEL_START_SIZE ;
 scalar_t__ ZINJECT_LABEL_FAULT ;
 int inject_handlers ;
 int inject_lock ;
 TYPE_4__* list_head (int *) ;
 TYPE_4__* list_next (int *,TYPE_4__*) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int vdev_label_number (scalar_t__,scalar_t__) ;
 scalar_t__ vdev_label_offset (scalar_t__,int,scalar_t__) ;

int
zio_handle_label_injection(zio_t *zio, int error)
{
 inject_handler_t *handler;
 vdev_t *vd = zio->io_vd;
 uint64_t offset = zio->io_offset;
 int label;
 int ret = 0;

 if (offset >= VDEV_LABEL_START_SIZE &&
     offset < vd->vdev_psize - VDEV_LABEL_END_SIZE)
  return (0);

 rw_enter(&inject_lock, RW_READER);

 for (handler = list_head(&inject_handlers); handler != ((void*)0);
     handler = list_next(&inject_handlers, handler)) {
  uint64_t start = handler->zi_record.zi_start;
  uint64_t end = handler->zi_record.zi_end;

  if (handler->zi_record.zi_cmd != ZINJECT_LABEL_FAULT)
   continue;






  label = vdev_label_number(vd->vdev_psize, offset);
  start = vdev_label_offset(vd->vdev_psize, label, start);
  end = vdev_label_offset(vd->vdev_psize, label, end);

  if (zio->io_vd->vdev_guid == handler->zi_record.zi_guid &&
      (offset >= start && offset <= end)) {
   ret = error;
   break;
  }
 }
 rw_exit(&inject_lock);
 return (ret);
}
