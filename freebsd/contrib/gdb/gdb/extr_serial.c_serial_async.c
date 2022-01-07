
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial {void* async_context; int * async_handler; TYPE_1__* ops; } ;
typedef int serial_event_ftype ;
struct TYPE_2__ {int (* async ) (struct serial*,int ) ;} ;


 int stub1 (struct serial*,int ) ;

void
serial_async (struct serial *scb,
       serial_event_ftype *handler,
       void *context)
{

  if ((scb->async_handler == ((void*)0))
      != (handler == ((void*)0)))
    scb->ops->async (scb, handler != ((void*)0));
  scb->async_handler = handler;
  scb->async_context = context;
}
