
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ctx_handler; } ;
typedef TYPE_1__ libusb_context ;


 int CTX_LOCK (TYPE_1__*) ;
 TYPE_1__* GET_CONTEXT (TYPE_1__*) ;
 scalar_t__ NO_THREAD ;
 scalar_t__ pthread_self () ;

void
libusb_lock_events(libusb_context *ctx)
{
 ctx = GET_CONTEXT(ctx);
 CTX_LOCK(ctx);
 if (ctx->ctx_handler == NO_THREAD)
  ctx->ctx_handler = pthread_self();
}
