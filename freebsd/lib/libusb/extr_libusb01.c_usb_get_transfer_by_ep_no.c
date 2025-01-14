
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_dev_handle ;
typedef int uint8_t ;
typedef int uint32_t ;
struct libusb20_transfer {int dummy; } ;
struct libusb20_device {int dummy; } ;


 int LIBUSB20_ENDPOINT_ADDRESS_MASK ;
 int LIBUSB20_ENDPOINT_DIR_MASK ;
 int LIBUSB20_ERROR_BUSY ;
 int LIBUSB20_SPEED_FULL ;
 int LIBUSB20_SPEED_LOW ;
 int LIBUSB20_SPEED_SUPER ;
 int libusb20_dev_get_speed (struct libusb20_device*) ;
 struct libusb20_transfer* libusb20_tr_get_pointer (struct libusb20_device*,int) ;
 int libusb20_tr_open (struct libusb20_transfer*,int,int,int) ;

__attribute__((used)) static struct libusb20_transfer *
usb_get_transfer_by_ep_no(usb_dev_handle * dev, uint8_t ep_no)
{
 struct libusb20_device *pdev = (void *)dev;
 struct libusb20_transfer *xfer;
 int err;
 uint32_t bufsize;
 uint8_t x;
 uint8_t speed;

 x = (ep_no & LIBUSB20_ENDPOINT_ADDRESS_MASK) * 2;

 if (ep_no & LIBUSB20_ENDPOINT_DIR_MASK) {

  x |= 1;
 }
 speed = libusb20_dev_get_speed(pdev);


 if (speed == LIBUSB20_SPEED_LOW) {
  bufsize = 256;
 } else if (speed == LIBUSB20_SPEED_FULL) {
  bufsize = 4096;
 } else if (speed == LIBUSB20_SPEED_SUPER) {
  bufsize = 65536;
 } else {
  bufsize = 16384;
 }

 xfer = libusb20_tr_get_pointer(pdev, x);

 if (xfer == ((void*)0))
  return (xfer);

 err = libusb20_tr_open(xfer, bufsize, 1, ep_no);
 if (err == LIBUSB20_ERROR_BUSY) {

  return (xfer);
 } else if (err) {
  return (((void*)0));
 }

 return (xfer);
}
