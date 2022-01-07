
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ ctx_handler; } ;
typedef TYPE_1__ libusb_context ;


 int CTX_TRYLOCK (TYPE_1__*) ;
 int CTX_UNLOCK (TYPE_1__*) ;
 TYPE_1__* GET_CONTEXT (TYPE_1__*) ;
 scalar_t__ NO_THREAD ;
 scalar_t__ pthread_self () ;

int
libusb_try_lock_events(libusb_context *ctx)
{
 int err;

 ctx = GET_CONTEXT(ctx);
 if (ctx == ((void*)0))
  return (1);

 err = CTX_TRYLOCK(ctx);
 if (err)
  return (1);

 err = (ctx->ctx_handler != NO_THREAD);
 if (err)
  CTX_UNLOCK(ctx);
 else
  ctx->ctx_handler = pthread_self();

 return (err);
}
