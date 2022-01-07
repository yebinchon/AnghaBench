
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bDescriptorType; int bInterfaceNumber; int bAlternateSetting; int bInterfaceClass; int bInterfaceSubClass; int bInterfaceProtocol; } ;
typedef TYPE_1__ usb_interface_descriptor_t ;
typedef int usb_config_descriptor_t ;
struct usb_descriptor {int dummy; } ;
typedef int int32_t ;


 scalar_t__ UDESC_INTERFACE ;
 struct usb_descriptor* usb_desc_foreach (int *,struct usb_descriptor*) ;

__attribute__((used)) static usb_interface_descriptor_t *
USBD_ParseConfigurationDescriptorEx(usb_config_descriptor_t *conf,
    void *start, int32_t intfnum, int32_t altset, int32_t intfclass,
    int32_t intfsubclass, int32_t intfproto)
{
 struct usb_descriptor *next = ((void*)0);
 usb_interface_descriptor_t *desc;

 while ((next = usb_desc_foreach(conf, next)) != ((void*)0)) {
  desc = (usb_interface_descriptor_t *)next;
  if (desc->bDescriptorType != UDESC_INTERFACE)
   continue;
  if (!(intfnum == -1 || desc->bInterfaceNumber == intfnum))
   continue;
  if (!(altset == -1 || desc->bAlternateSetting == altset))
   continue;
  if (!(intfclass == -1 || desc->bInterfaceClass == intfclass))
   continue;
  if (!(intfsubclass == -1 ||
      desc->bInterfaceSubClass == intfsubclass))
   continue;
  if (!(intfproto == -1 || desc->bInterfaceProtocol == intfproto))
   continue;
  return (desc);
 }

 return (((void*)0));
}
