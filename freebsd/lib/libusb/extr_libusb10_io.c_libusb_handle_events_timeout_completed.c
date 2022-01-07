
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
typedef int libusb_context ;


 int DPRINTF (int *,int ,char*) ;
 int * GET_CONTEXT (int *) ;
 int LIBUSB_DEBUG_FUNCTION ;
 int libusb_handle_events_locked (int *,struct timeval*) ;
 int libusb_lock_events (int *) ;
 int libusb_unlock_events (int *) ;

int
libusb_handle_events_timeout_completed(libusb_context *ctx,
    struct timeval *tv, int *completed)
{
 int err = 0;

 ctx = GET_CONTEXT(ctx);

 DPRINTF(ctx, LIBUSB_DEBUG_FUNCTION, "libusb_handle_events_timeout_completed enter");

 libusb_lock_events(ctx);

 while (1) {
  if (completed != ((void*)0)) {
   if (*completed != 0 || err != 0)
    break;
  }
  err = libusb_handle_events_locked(ctx, tv);
  if (completed == ((void*)0))
   break;
 }

 libusb_unlock_events(ctx);

 DPRINTF(ctx, LIBUSB_DEBUG_FUNCTION, "libusb_handle_events_timeout_completed exit");

 return (err);
}
