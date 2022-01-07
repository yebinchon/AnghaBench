
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_dev_handle ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {int devices; } ;


 int LIST_DEL (int ,struct usb_device*) ;
 int free (struct usb_device*) ;
 int libusb20_be_enqueue_device (int *,void*) ;
 int libusb20_dev_close (void*) ;
 int libusb20_dev_free (void*) ;
 int * usb_backend ;
 struct usb_device* usb_device (int *) ;
 TYPE_1__ usb_global_bus ;

int
usb_close(usb_dev_handle * udev)
{
 struct usb_device *dev;
 int err;

 err = libusb20_dev_close((void *)udev);

 if (err)
  return (-1);

 if (usb_backend != ((void*)0)) {




  libusb20_be_enqueue_device(usb_backend, (void *)udev);
 } else {




  dev = usb_device(udev);
  libusb20_dev_free((void *)udev);
  LIST_DEL(usb_global_bus.devices, dev);
  free(dev);
 }
 return (0);
}
