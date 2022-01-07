
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
typedef int libusb_context ;


 int libusb_handle_events_timeout_completed (int *,struct timeval*,int *) ;

int
libusb_handle_events_timeout(libusb_context *ctx, struct timeval *tv)
{
 return (libusb_handle_events_timeout_completed(ctx, tv, ((void*)0)));
}
