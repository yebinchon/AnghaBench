
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb_transfer {int* user_data; int dev_handle; } ;
typedef int libusb_context ;


 int DPRINTF (int *,int ,char*) ;
 int LIBUSB_DEBUG_TRANSFER ;
 int * libusb10_get_context_by_device_handle (int ) ;

__attribute__((used)) static void
libusb10_do_transfer_cb(struct libusb_transfer *transfer)
{
 libusb_context *ctx;
 int *pdone;

 ctx = libusb10_get_context_by_device_handle(transfer->dev_handle);

 DPRINTF(ctx, LIBUSB_DEBUG_TRANSFER, "sync I/O done");

 pdone = transfer->user_data;
 *pdone = 1;
}
