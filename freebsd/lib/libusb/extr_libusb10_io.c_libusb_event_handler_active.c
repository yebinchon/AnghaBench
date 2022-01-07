
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ctx_handler; } ;
typedef TYPE_1__ libusb_context ;


 TYPE_1__* GET_CONTEXT (TYPE_1__*) ;
 scalar_t__ NO_THREAD ;

int
libusb_event_handler_active(libusb_context *ctx)
{
 ctx = GET_CONTEXT(ctx);
 return (ctx->ctx_handler != NO_THREAD);
}
