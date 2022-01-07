
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct libusb_transfer {int length; int num_iso_packets; int callback; void* user_data; int * buffer; int timeout; int type; int endpoint; int * dev_handle; } ;
typedef int libusb_transfer_cb_fn ;
typedef int libusb_device_handle ;


 int LIBUSB_TRANSFER_TYPE_ISOCHRONOUS ;

void
libusb_fill_iso_transfer(struct libusb_transfer *transfer,
    libusb_device_handle *devh, uint8_t endpoint, uint8_t *buf,
    int length, int npacket, libusb_transfer_cb_fn callback,
    void *user_data, uint32_t timeout)
{
 transfer->dev_handle = devh;
 transfer->endpoint = endpoint;
 transfer->type = LIBUSB_TRANSFER_TYPE_ISOCHRONOUS;
 transfer->timeout = timeout;
 transfer->buffer = buf;
 transfer->length = length;
 transfer->num_iso_packets = npacket;
 transfer->user_data = user_data;
 transfer->callback = callback;
}
