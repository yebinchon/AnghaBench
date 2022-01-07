
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ io_spa; scalar_t__ io_txg; int io_pipeline; } ;
typedef TYPE_2__ zio_t ;
struct TYPE_8__ {scalar_t__ zi_cmd; scalar_t__ zi_timer; scalar_t__ zi_duration; } ;
struct TYPE_10__ {scalar_t__ zi_spa; TYPE_1__ zi_record; } ;
typedef TYPE_3__ inject_handler_t ;


 int RW_READER ;
 scalar_t__ ZINJECT_IGNORED_WRITES ;
 int ZIO_VDEV_IO_STAGES ;
 scalar_t__ ddi_get_lbolt64 () ;
 int inject_handlers ;
 int inject_lock ;
 TYPE_3__* list_head (int *) ;
 TYPE_3__* list_next (int *,TYPE_3__*) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int spa_get_random (int) ;

void
zio_handle_ignored_writes(zio_t *zio)
{
 inject_handler_t *handler;

 rw_enter(&inject_lock, RW_READER);

 for (handler = list_head(&inject_handlers); handler != ((void*)0);
     handler = list_next(&inject_handlers, handler)) {


  if (zio->io_spa != handler->zi_spa ||
      handler->zi_record.zi_cmd != ZINJECT_IGNORED_WRITES)
   continue;





  if (handler->zi_record.zi_timer == 0) {
   if (handler->zi_record.zi_duration > 0)
    handler->zi_record.zi_timer = ddi_get_lbolt64();
   else
    handler->zi_record.zi_timer = zio->io_txg;
  }


  if (spa_get_random(100) < 60)
   zio->io_pipeline &= ~ZIO_VDEV_IO_STAGES;
  break;
 }

 rw_exit(&inject_lock);
}
