
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int libusb_device_handle ;
typedef int libusb_context ;
struct TYPE_2__ {int * ctx; } ;


 int * GET_CONTEXT (int *) ;
 TYPE_1__* libusb_get_device (int *) ;

__attribute__((used)) static libusb_context *
libusb10_get_context_by_device_handle(libusb_device_handle *devh)
{
 libusb_context *ctx;

 if (devh != ((void*)0))
  ctx = libusb_get_device(devh)->ctx;
 else
  ctx = ((void*)0);

 return (GET_CONTEXT(ctx));
}
