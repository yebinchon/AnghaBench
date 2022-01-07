
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int usb_size_t ;
typedef scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__ bmAttributes; scalar_t__ bEndpointAddress; } ;
struct usb_host_endpoint {int fbsd_buf_size; int bsd_xfer; int bsd_iface_index; TYPE_1__ desc; } ;
struct usb_device {int dummy; } ;
struct TYPE_4__ {int proxy_buffer; int ext_buffer; int short_xfer_ok; } ;
struct usb_config {int bufsize; TYPE_2__ flags; int * callback; scalar_t__ direction; scalar_t__ endpoint; scalar_t__ type; int frames; } ;
typedef int cfg ;


 int EINVAL ;
 int Giant ;
 scalar_t__ UE_ADDR ;
 scalar_t__ UE_DIR_IN ;
 scalar_t__ UE_DIR_OUT ;
 scalar_t__ UE_ISOCHRONOUS ;
 scalar_t__ UE_XFERTYPE ;
 int bcopy (struct usb_config*,struct usb_config*,int) ;
 int memset (struct usb_config*,int ,int) ;
 int usb_linux_isoc_callback ;
 int usb_linux_non_isoc_callback ;
 int usb_max_isoc_frames (struct usb_device*) ;
 scalar_t__ usbd_transfer_setup (struct usb_device*,int *,int ,struct usb_config*,int,struct usb_host_endpoint*,int *) ;
 int usbd_transfer_unsetup (int ,int) ;

int
usb_setup_endpoint(struct usb_device *dev,
    struct usb_host_endpoint *uhe, usb_size_t bufsize)
{
 struct usb_config cfg[2];
 uint8_t type = uhe->desc.bmAttributes & UE_XFERTYPE;
 uint8_t addr = uhe->desc.bEndpointAddress;

 if (uhe->fbsd_buf_size == bufsize) {

  return (0);
 }
 usbd_transfer_unsetup(uhe->bsd_xfer, 2);

 uhe->fbsd_buf_size = bufsize;

 if (bufsize == 0) {
  return (0);
 }
 memset(cfg, 0, sizeof(cfg));

 if (type == UE_ISOCHRONOUS) {






  cfg[0].type = type;
  cfg[0].endpoint = addr & UE_ADDR;
  cfg[0].direction = addr & (UE_DIR_OUT | UE_DIR_IN);
  cfg[0].callback = &usb_linux_isoc_callback;
  cfg[0].bufsize = 0;
  cfg[0].frames = usb_max_isoc_frames(dev);
  cfg[0].flags.proxy_buffer = 1;
  cfg[0].flags.short_xfer_ok = 1;

  bcopy(cfg, cfg + 1, sizeof(*cfg));



  if (usbd_transfer_setup(dev, &uhe->bsd_iface_index,
      uhe->bsd_xfer, cfg, 2, uhe, &Giant)) {
   return (-EINVAL);
  }
 } else {
  if (bufsize > (1 << 22)) {

   bufsize = (1 << 22);
  }


  cfg[0].type = type;
  cfg[0].endpoint = addr & UE_ADDR;
  cfg[0].direction = addr & (UE_DIR_OUT | UE_DIR_IN);
  cfg[0].callback = &usb_linux_non_isoc_callback;
  cfg[0].bufsize = bufsize;
  cfg[0].flags.ext_buffer = 1;
  cfg[0].flags.proxy_buffer = 1;
  cfg[0].flags.short_xfer_ok = 1;

  if (usbd_transfer_setup(dev, &uhe->bsd_iface_index,
      uhe->bsd_xfer, cfg, 1, uhe, &Giant)) {
   return (-EINVAL);
  }
 }
 return (0);
}
