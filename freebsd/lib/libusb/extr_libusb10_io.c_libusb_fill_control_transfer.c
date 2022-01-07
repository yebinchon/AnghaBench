
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct libusb_transfer {int callback; void* user_data; scalar_t__ length; int * buffer; int timeout; int type; scalar_t__ endpoint; int * dev_handle; } ;
struct libusb_control_setup {int wLength; } ;
typedef int libusb_transfer_cb_fn ;
typedef int libusb_device_handle ;


 scalar_t__ LIBUSB_CONTROL_SETUP_SIZE ;
 int LIBUSB_TRANSFER_TYPE_CONTROL ;
 scalar_t__ le16toh (int ) ;

void
libusb_fill_control_transfer(struct libusb_transfer *transfer,
    libusb_device_handle *devh, uint8_t *buf,
    libusb_transfer_cb_fn callback, void *user_data,
    uint32_t timeout)
{
 struct libusb_control_setup *setup = (struct libusb_control_setup *)buf;

 transfer->dev_handle = devh;
 transfer->endpoint = 0;
 transfer->type = LIBUSB_TRANSFER_TYPE_CONTROL;
 transfer->timeout = timeout;
 transfer->buffer = buf;
 if (setup != ((void*)0))
  transfer->length = LIBUSB_CONTROL_SETUP_SIZE
   + le16toh(setup->wLength);
 else
  transfer->length = 0;
 transfer->user_data = user_data;
 transfer->callback = callback;

}
