
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int num_altsetting; struct usb_host_interface* altsetting; } ;
struct TYPE_2__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_1__ desc; struct usb_host_endpoint* endpoint; } ;
struct usb_host_endpoint {int dummy; } ;
struct usb_device {int dummy; } ;


 int usb_setup_endpoint (struct usb_device*,struct usb_host_endpoint*,int ) ;

__attribute__((used)) static void
usb_linux_cleanup_interface(struct usb_device *dev, struct usb_interface *iface)
{
 struct usb_host_interface *uhi;
 struct usb_host_interface *uhi_end;
 struct usb_host_endpoint *uhe;
 struct usb_host_endpoint *uhe_end;
 int err;

 uhi = iface->altsetting;
 uhi_end = iface->altsetting + iface->num_altsetting;
 while (uhi != uhi_end) {
  uhe = uhi->endpoint;
  uhe_end = uhi->endpoint + uhi->desc.bNumEndpoints;
  while (uhe != uhe_end) {
   err = usb_setup_endpoint(dev, uhe, 0);
   uhe++;
  }
  uhi++;
 }
}
