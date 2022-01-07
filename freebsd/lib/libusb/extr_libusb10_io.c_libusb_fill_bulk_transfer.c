
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct libusb_transfer {int length; int callback; void* user_data; int * buffer; int timeout; int type; int endpoint; int * dev_handle; } ;
typedef int libusb_transfer_cb_fn ;
typedef int libusb_device_handle ;


 int LIBUSB_TRANSFER_TYPE_BULK ;

void
libusb_fill_bulk_transfer(struct libusb_transfer *transfer,
    libusb_device_handle *devh, uint8_t endpoint, uint8_t *buf,
    int length, libusb_transfer_cb_fn callback, void *user_data,
    uint32_t timeout)
{
 transfer->dev_handle = devh;
 transfer->endpoint = endpoint;
 transfer->type = LIBUSB_TRANSFER_TYPE_BULK;
 transfer->timeout = timeout;
 transfer->buffer = buf;
 transfer->length = length;
 transfer->user_data = user_data;
 transfer->callback = callback;
}
