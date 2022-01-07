
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_dev_handle ;


 int libusb20_dev_reset (void*) ;
 int usb_close (int *) ;

int
usb_reset(usb_dev_handle * dev)
{
 int err;

 err = libusb20_dev_reset((void *)dev);

 if (err)
  return (-1);





 return (usb_close(dev));
}
