
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct libusb_transfer {int * buffer; } ;


 int LIBUSB_CONTROL_SETUP_SIZE ;

uint8_t *
libusb_control_transfer_get_data(struct libusb_transfer *transfer)
{
 if (transfer->buffer == ((void*)0))
  return (((void*)0));

 return (transfer->buffer + LIBUSB_CONTROL_SETUP_SIZE);
}
