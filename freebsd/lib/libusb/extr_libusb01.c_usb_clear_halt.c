
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_dev_handle ;
struct libusb20_transfer {int dummy; } ;


 int libusb20_tr_clear_stall_sync (struct libusb20_transfer*) ;
 struct libusb20_transfer* usb_get_transfer_by_ep_no (int *,unsigned int) ;

int
usb_clear_halt(usb_dev_handle * dev, unsigned int ep)
{
 struct libusb20_transfer *xfer;

 xfer = usb_get_transfer_by_ep_no(dev, ep);
 if (xfer == ((void*)0))
  return (-1);

 libusb20_tr_clear_stall_sync(xfer);

 return (0);
}
