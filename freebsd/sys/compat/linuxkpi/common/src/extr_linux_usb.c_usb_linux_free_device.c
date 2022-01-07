
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {int dummy; } ;
struct usb_device {struct usb_host_endpoint* linux_endpoint_start; struct usb_host_endpoint ep0; struct usb_host_endpoint* linux_endpoint_end; } ;


 int M_USBDEV ;
 int free (struct usb_host_endpoint*,int ) ;
 int usb_setup_endpoint (struct usb_device*,struct usb_host_endpoint*,int ) ;

void
usb_linux_free_device(struct usb_device *dev)
{
 struct usb_host_endpoint *uhe;
 struct usb_host_endpoint *uhe_end;
 int err;

 uhe = dev->linux_endpoint_start;
 uhe_end = dev->linux_endpoint_end;
 while (uhe != uhe_end) {
  err = usb_setup_endpoint(dev, uhe, 0);
  uhe++;
 }
 err = usb_setup_endpoint(dev, &dev->ep0, 0);
 free(dev->linux_endpoint_start, M_USBDEV);
}
