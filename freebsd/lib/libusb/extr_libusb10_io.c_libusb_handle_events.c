
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libusb_context ;


 int libusb_handle_events_timeout_completed (int *,int *,int *) ;

int
libusb_handle_events(libusb_context *ctx)
{
 return (libusb_handle_events_timeout_completed(ctx, ((void*)0), ((void*)0)));
}
