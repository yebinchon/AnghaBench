
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int bNumEndpoints; int bInterfaceProtocol; int bInterfaceSubClass; int bInterfaceClass; int bAlternateSetting; int bInterfaceNumber; } ;
typedef TYPE_2__ usb_interface_descriptor_t ;
struct TYPE_7__ {int bNumInterface; } ;
typedef TYPE_3__ usb_config_descriptor_t ;
typedef union usbd_urb {int dummy; } usbd_urb ;
struct usbd_interface_information {int uii_len; int uii_numeps; struct usbd_pipe_information* uii_pipes; TYPE_2__* uii_handle; int uii_intfproto; int uii_intfsubclass; int uii_intfclass; int uii_altset; int uii_intfnum; } ;
struct TYPE_5__ {int uuh_len; int uuh_func; } ;
struct usbd_urb_select_configuration {struct usbd_interface_information usc_intf; TYPE_3__* usc_conf; TYPE_3__* usc_handle; TYPE_1__ usc_hdr; } ;
struct usbd_pipe_information {int upi_maxtxsize; } ;
struct usbd_interface_list_entry {TYPE_2__* uil_intfdesc; struct usbd_interface_information* uil_intf; } ;


 struct usbd_urb_select_configuration* ExAllocatePoolWithTag (int ,int,int ) ;
 int NonPagedPool ;
 int URB_FUNCTION_SELECT_CONFIGURATION ;
 int USBD_DEFAULT_MAXIMUM_TRANSFER_SIZE ;

__attribute__((used)) static union usbd_urb *
USBD_CreateConfigurationRequestEx(usb_config_descriptor_t *conf,
    struct usbd_interface_list_entry *list)
{
 int i, j, size;
 struct usbd_interface_information *intf;
 struct usbd_pipe_information *pipe;
 struct usbd_urb_select_configuration *selconf;
 usb_interface_descriptor_t *desc;

 for (i = 0, size = 0; i < conf->bNumInterface; i++) {
  j = list[i].uil_intfdesc->bNumEndpoints;
  size = size + sizeof(struct usbd_interface_information) +
      sizeof(struct usbd_pipe_information) * (j - 1);
 }
 size += sizeof(struct usbd_urb_select_configuration) -
     sizeof(struct usbd_interface_information);

 selconf = ExAllocatePoolWithTag(NonPagedPool, size, 0);
 if (selconf == ((void*)0))
  return (((void*)0));
 selconf->usc_hdr.uuh_func = URB_FUNCTION_SELECT_CONFIGURATION;
 selconf->usc_hdr.uuh_len = size;
 selconf->usc_handle = conf;
 selconf->usc_conf = conf;

 intf = &selconf->usc_intf;
 for (i = 0; i < conf->bNumInterface; i++) {
  if (list[i].uil_intfdesc == ((void*)0))
   break;

  list[i].uil_intf = intf;
  desc = list[i].uil_intfdesc;

  intf->uii_len = sizeof(struct usbd_interface_information) +
      (desc->bNumEndpoints - 1) *
      sizeof(struct usbd_pipe_information);
  intf->uii_intfnum = desc->bInterfaceNumber;
  intf->uii_altset = desc->bAlternateSetting;
  intf->uii_intfclass = desc->bInterfaceClass;
  intf->uii_intfsubclass = desc->bInterfaceSubClass;
  intf->uii_intfproto = desc->bInterfaceProtocol;
  intf->uii_handle = desc;
  intf->uii_numeps = desc->bNumEndpoints;

  pipe = &intf->uii_pipes[0];
  for (j = 0; j < intf->uii_numeps; j++)
   pipe[j].upi_maxtxsize =
       USBD_DEFAULT_MAXIMUM_TRANSFER_SIZE;

  intf = (struct usbd_interface_information *)((char *)intf +
      intf->uii_len);
 }

 return ((union usbd_urb *)selconf);
}
