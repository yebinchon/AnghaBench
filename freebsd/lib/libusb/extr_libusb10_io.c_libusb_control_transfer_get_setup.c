
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb_transfer {scalar_t__ buffer; } ;
struct libusb_control_setup {int dummy; } ;



struct libusb_control_setup *
libusb_control_transfer_get_setup(struct libusb_transfer *transfer)
{
 return ((struct libusb_control_setup *)transfer->buffer);
}
