
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int * libusb_hotplug_callback_handle ;
struct TYPE_7__ {int hotplug_cbh; } ;
typedef TYPE_1__ libusb_context ;


 TYPE_1__* GET_CONTEXT (TYPE_1__*) ;
 int HOTPLUG_LOCK (TYPE_1__*) ;
 int HOTPLUG_UNLOCK (TYPE_1__*) ;
 int TAILQ_REMOVE (int *,int *,int ) ;
 int entry ;
 int free (int *) ;

void libusb_hotplug_deregister_callback(libusb_context *ctx,
    libusb_hotplug_callback_handle handle)
{
   ctx = GET_CONTEXT(ctx);

 if (ctx == ((void*)0) || handle == ((void*)0))
  return;

 HOTPLUG_LOCK(ctx);
 TAILQ_REMOVE(&ctx->hotplug_cbh, handle, entry);
 HOTPLUG_UNLOCK(ctx);

 free(handle);
}
