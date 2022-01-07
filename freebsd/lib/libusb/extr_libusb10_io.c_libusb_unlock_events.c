
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ctx_handler; int ctx_cond; } ;
typedef TYPE_1__ libusb_context ;


 int CTX_UNLOCK (TYPE_1__*) ;
 TYPE_1__* GET_CONTEXT (TYPE_1__*) ;
 scalar_t__ NO_THREAD ;
 int pthread_cond_broadcast (int *) ;
 scalar_t__ pthread_self () ;

void
libusb_unlock_events(libusb_context *ctx)
{
 ctx = GET_CONTEXT(ctx);
 if (ctx->ctx_handler == pthread_self()) {
  ctx->ctx_handler = NO_THREAD;
  pthread_cond_broadcast(&ctx->ctx_cond);
 }
 CTX_UNLOCK(ctx);
}
