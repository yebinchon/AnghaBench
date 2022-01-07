
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_dev_handle ;
struct usb_device {int * dev; } ;


 int LIBUSB20_ERROR_BUSY ;
 int libusb20_be_dequeue_device (int ,int *) ;
 int libusb20_dev_open (int *,int) ;
 int usb_backend ;

usb_dev_handle *
usb_open(struct usb_device *dev)
{
 int err;

 err = libusb20_dev_open(dev->dev, 16 * 2);
 if (err == LIBUSB20_ERROR_BUSY) {




  return (dev->dev);
 }
 if (err)
  return (((void*)0));





 libusb20_be_dequeue_device(usb_backend, dev->dev);

 return (dev->dev);
}
