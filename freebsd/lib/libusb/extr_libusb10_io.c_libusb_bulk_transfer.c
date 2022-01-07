
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int libusb_device_handle ;
typedef int libusb_context ;


 int DPRINTF (int *,int ,char*) ;
 int LIBUSB_DEBUG_FUNCTION ;
 int LIBUSB_TRANSFER_TYPE_BULK ;
 int libusb10_do_transfer (int *,int ,int *,int,int*,unsigned int,int ) ;
 int * libusb10_get_context_by_device_handle (int *) ;

int
libusb_bulk_transfer(libusb_device_handle *devh,
    uint8_t endpoint, uint8_t *data, int length,
    int *transferred, unsigned int timeout)
{
 libusb_context *ctx;
 int ret;

 ctx = libusb10_get_context_by_device_handle(devh);

 DPRINTF(ctx, LIBUSB_DEBUG_FUNCTION, "libusb_bulk_transfer enter");

 ret = libusb10_do_transfer(devh, endpoint, data, length, transferred,
     timeout, LIBUSB_TRANSFER_TYPE_BULK);

 DPRINTF(ctx, LIBUSB_DEBUG_FUNCTION, "libusb_bulk_transfer leave");
 return (ret);
}
