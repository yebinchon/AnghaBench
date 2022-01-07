
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int usb_size_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct usb_interface_descriptor {int bLength; int bInterfaceNumber; } ;
struct usb_interface {int num_altsetting; int bsd_iface_index; struct usb_device* linux_udev; struct usb_host_interface* cur_altsetting; struct usb_host_interface* altsetting; } ;
struct TYPE_6__ {int bNumEndpoints; } ;
struct usb_host_interface {char* string; int bsd_iface_index; struct usb_host_endpoint* endpoint; TYPE_3__ desc; } ;
struct usb_host_endpoint {int bsd_iface_index; int bsd_urb_list; TYPE_3__ desc; } ;
struct usb_endpoint_descriptor {int bLength; int bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_3__ desc; } ;
struct TYPE_4__ {struct usb_interface_descriptor* edesc; } ;
struct usb_device {TYPE_2__ ep0; TYPE_1__ ctrl_ep; TYPE_3__ descriptor; struct usb_interface_descriptor ddesc; int devnum; struct usb_host_endpoint* linux_endpoint_end; struct usb_host_endpoint* linux_endpoint_start; struct usb_interface* linux_iface_end; struct usb_interface* linux_iface_start; } ;
struct usb_descriptor {int bDescriptorType; } ;
struct usb_config_descriptor {int dummy; } ;
typedef int device_t ;


 int M_USBDEV ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;



 int bcopy (struct usb_interface_descriptor*,TYPE_3__*,int) ;
 int device_get_unit (int ) ;
 struct usb_host_endpoint* malloc (int,int ,int) ;
 struct usb_descriptor* usb_desc_foreach (struct usb_config_descriptor*,struct usb_descriptor*) ;
 struct usb_config_descriptor* usbd_get_config_descriptor (struct usb_device*) ;

__attribute__((used)) static int
usb_linux_create_usb_device(struct usb_device *udev, device_t dev)
{
 struct usb_config_descriptor *cd = usbd_get_config_descriptor(udev);
 struct usb_descriptor *desc;
 struct usb_interface_descriptor *id;
 struct usb_endpoint_descriptor *ed;
 struct usb_interface *p_ui = ((void*)0);
 struct usb_host_interface *p_uhi = ((void*)0);
 struct usb_host_endpoint *p_uhe = ((void*)0);
 usb_size_t size;
 uint16_t niface_total;
 uint16_t nedesc;
 uint16_t iface_no_curr;
 uint16_t iface_index;
 uint8_t pass;
 uint8_t iface_no;





 for (pass = 0; pass < 2; pass++) {

  iface_no_curr = 0xFFFF;
  niface_total = 0;
  iface_index = 0;
  nedesc = 0;
  desc = ((void*)0);





  while ((desc = usb_desc_foreach(cd, desc))) {





   switch (desc->bDescriptorType) {
   case 130:
    break;

   case 129:
    ed = (void *)desc;
    if ((ed->bLength < sizeof(*ed)) ||
        (iface_index == 0))
     break;
    if (p_uhe) {
     bcopy(ed, &p_uhe->desc, sizeof(p_uhe->desc));
     p_uhe->bsd_iface_index = iface_index - 1;
     TAILQ_INIT(&p_uhe->bsd_urb_list);
     p_uhe++;
    }
    if (p_uhi) {
     (p_uhi - 1)->desc.bNumEndpoints++;
    }
    nedesc++;
    break;

   case 128:
    id = (void *)desc;
    if (id->bLength < sizeof(*id))
     break;
    if (p_uhi) {
     bcopy(id, &p_uhi->desc, sizeof(p_uhi->desc));
     p_uhi->desc.bNumEndpoints = 0;
     p_uhi->endpoint = p_uhe;
     p_uhi->string = "";
     p_uhi->bsd_iface_index = iface_index;
     p_uhi++;
    }
    iface_no = id->bInterfaceNumber;
    niface_total++;
    if (iface_no_curr != iface_no) {
     if (p_ui) {
      p_ui->altsetting = p_uhi - 1;
      p_ui->cur_altsetting = p_uhi - 1;
      p_ui->num_altsetting = 1;
      p_ui->bsd_iface_index = iface_index;
      p_ui->linux_udev = udev;
      p_ui++;
     }
     iface_no_curr = iface_no;
     iface_index++;
    } else {
     if (p_ui) {
      (p_ui - 1)->num_altsetting++;
     }
    }
    break;

   default:
    break;
   }
  }

  if (pass == 0) {

   size = (sizeof(*p_uhe) * nedesc) +
       (sizeof(*p_ui) * iface_index) +
       (sizeof(*p_uhi) * niface_total);

   p_uhe = malloc(size, M_USBDEV, M_WAITOK | M_ZERO);
   p_ui = (void *)(p_uhe + nedesc);
   p_uhi = (void *)(p_ui + iface_index);

   udev->linux_iface_start = p_ui;
   udev->linux_iface_end = p_ui + iface_index;
   udev->linux_endpoint_start = p_uhe;
   udev->linux_endpoint_end = p_uhe + nedesc;
   udev->devnum = device_get_unit(dev);
   bcopy(&udev->ddesc, &udev->descriptor,
       sizeof(udev->descriptor));
   bcopy(udev->ctrl_ep.edesc, &udev->ep0.desc,
       sizeof(udev->ep0.desc));
  }
 }
 return (0);
}
