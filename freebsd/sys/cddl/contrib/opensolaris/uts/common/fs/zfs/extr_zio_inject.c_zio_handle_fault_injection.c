
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ io_type; scalar_t__ io_spa; scalar_t__ io_bp; TYPE_1__* io_logical; } ;
typedef TYPE_2__ zio_t ;
struct TYPE_12__ {scalar_t__ zi_cmd; } ;
struct TYPE_11__ {scalar_t__ zi_spa; TYPE_4__ zi_record; } ;
typedef TYPE_3__ inject_handler_t ;
struct TYPE_9__ {int io_bookmark; } ;


 int BP_GET_TYPE (scalar_t__) ;
 int DMU_OT_NONE ;
 int RW_READER ;
 scalar_t__ ZINJECT_DATA_FAULT ;
 scalar_t__ ZIO_TYPE_READ ;
 int inject_handlers ;
 int inject_lock ;
 TYPE_3__* list_head (int *) ;
 TYPE_3__* list_next (int *,TYPE_3__*) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 scalar_t__ zio_match_handler (int *,int ,TYPE_4__*,int) ;

int
zio_handle_fault_injection(zio_t *zio, int error)
{
 int ret = 0;
 inject_handler_t *handler;




 if (zio->io_logical == ((void*)0))
  return (0);




 if (zio->io_type != ZIO_TYPE_READ)
  return (0);

 rw_enter(&inject_lock, RW_READER);

 for (handler = list_head(&inject_handlers); handler != ((void*)0);
     handler = list_next(&inject_handlers, handler)) {

  if (zio->io_spa != handler->zi_spa ||
      handler->zi_record.zi_cmd != ZINJECT_DATA_FAULT)
   continue;


  if (zio_match_handler(&zio->io_logical->io_bookmark,
      zio->io_bp ? BP_GET_TYPE(zio->io_bp) : DMU_OT_NONE,
      &handler->zi_record, error)) {
   ret = error;
   break;
  }
 }

 rw_exit(&inject_lock);

 return (ret);
}
