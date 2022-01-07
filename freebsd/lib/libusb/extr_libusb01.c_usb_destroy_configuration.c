
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_2__ {size_t bNumConfigurations; } ;
struct usb_device {struct usb_config_descriptor* config; TYPE_1__ descriptor; } ;
struct usb_config_descriptor {struct usb_config_descriptor* interface; } ;


 int free (struct usb_config_descriptor*) ;

void
usb_destroy_configuration(struct usb_device *dev)
{
 uint8_t c;

 if (dev->config == ((void*)0)) {
  return;
 }
 for (c = 0; c != dev->descriptor.bNumConfigurations; c++) {
  struct usb_config_descriptor *cf = &dev->config[c];

  if (cf->interface != ((void*)0)) {
   free(cf->interface);
   cf->interface = ((void*)0);
  }
 }

 free(dev->config);
 dev->config = ((void*)0);
 return;
}
