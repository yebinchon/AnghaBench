
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ pthread_t ;
struct TYPE_10__ {scalar_t__ hotplug_handler; int ctx_cond; int hotplug_lock; int ctx_lock; int * ctrl_pipe; int ctx_poll; } ;
typedef TYPE_1__ libusb_context ;


 TYPE_1__* GET_CONTEXT (TYPE_1__*) ;
 int HOTPLUG_LOCK (TYPE_1__*) ;
 int HOTPLUG_UNLOCK (TYPE_1__*) ;
 scalar_t__ NO_THREAD ;
 int close (int ) ;
 int default_context_lock ;
 int free (TYPE_1__*) ;
 int libusb10_remove_pollfd (TYPE_1__*,int *) ;
 int pthread_cond_destroy (int *) ;
 int pthread_join (scalar_t__,void**) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_1__* usbi_default_context ;

void
libusb_exit(libusb_context *ctx)
{
 ctx = GET_CONTEXT(ctx);

 if (ctx == ((void*)0))
  return;



 if (ctx->hotplug_handler != NO_THREAD) {
  pthread_t td;
  void *ptr;

  HOTPLUG_LOCK(ctx);
  td = ctx->hotplug_handler;
  ctx->hotplug_handler = NO_THREAD;
  HOTPLUG_UNLOCK(ctx);

  pthread_join(td, &ptr);
 }



 libusb10_remove_pollfd(ctx, &ctx->ctx_poll);
 close(ctx->ctrl_pipe[0]);
 close(ctx->ctrl_pipe[1]);
 pthread_mutex_destroy(&ctx->ctx_lock);
 pthread_mutex_destroy(&ctx->hotplug_lock);
 pthread_cond_destroy(&ctx->ctx_cond);

 pthread_mutex_lock(&default_context_lock);
 if (ctx == usbi_default_context) {
  usbi_default_context = ((void*)0);
 }
 pthread_mutex_unlock(&default_context_lock);

 free(ctx);
}
