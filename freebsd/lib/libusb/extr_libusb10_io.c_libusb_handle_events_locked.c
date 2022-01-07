
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
typedef int libusb_context ;


 int * GET_CONTEXT (int *) ;
 int LIBUSB_ERROR_TIMEOUT ;
 int libusb10_handle_events_sub (int *,struct timeval*) ;
 scalar_t__ libusb_event_handling_ok (int *) ;
 int libusb_wait_for_event (int *,struct timeval*) ;

int
libusb_handle_events_locked(libusb_context *ctx, struct timeval *tv)
{
 int err;

 ctx = GET_CONTEXT(ctx);

 if (libusb_event_handling_ok(ctx)) {
  err = libusb10_handle_events_sub(ctx, tv);
 } else {
  err = libusb_wait_for_event(ctx, tv);
  if (err != 0)
   err = LIBUSB_ERROR_TIMEOUT;
 }
 return (err);
}
