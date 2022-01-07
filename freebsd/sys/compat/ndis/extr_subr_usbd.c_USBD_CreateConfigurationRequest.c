
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int usb_config_descriptor_t ;
struct TYPE_3__ {int uuh_len; } ;
struct TYPE_4__ {TYPE_1__ usc_hdr; } ;
union usbd_urb {TYPE_2__ uu_selconf; } ;
typedef int uint16_t ;
struct usbd_interface_list_entry {int uil_intfdesc; } ;


 union usbd_urb* USBD_CreateConfigurationRequestEx (int *,struct usbd_interface_list_entry*) ;
 int USBD_ParseConfigurationDescriptorEx (int *,int *,int,int,int,int,int) ;
 int bzero (struct usbd_interface_list_entry*,int) ;

__attribute__((used)) static union usbd_urb *
USBD_CreateConfigurationRequest(usb_config_descriptor_t *conf, uint16_t *len)
{
 struct usbd_interface_list_entry list[2];
 union usbd_urb *urb;

 bzero(list, sizeof(struct usbd_interface_list_entry) * 2);
 list[0].uil_intfdesc = USBD_ParseConfigurationDescriptorEx(conf, conf,
     -1, -1, -1, -1, -1);
 urb = USBD_CreateConfigurationRequestEx(conf, list);
 if (urb == ((void*)0))
  return (((void*)0));

 *len = urb->uu_selconf.usc_hdr.uuh_len;
 return (urb);
}
