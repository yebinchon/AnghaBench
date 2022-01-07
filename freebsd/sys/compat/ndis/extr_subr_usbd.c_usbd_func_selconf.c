
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
struct TYPE_4__ {int bInterval; int bmAttributes; int wMaxPacketSize; int bEndpointAddress; } ;
typedef TYPE_1__ usb_endpoint_descriptor_t ;
struct TYPE_5__ {int bNumInterface; } ;
typedef TYPE_2__ usb_config_descriptor_t ;
struct usbd_interface_information {scalar_t__ uii_len; int uii_numeps; int uii_intfnum; struct usbd_pipe_information* uii_pipes; int uii_altset; } ;
struct usbd_urb_select_configuration {struct usbd_interface_information usc_intf; TYPE_2__* usc_conf; } ;
union usbd_urb {struct usbd_urb_select_configuration uu_selconf; } ;
struct usbd_pipe_information {scalar_t__ upi_type; int upi_interval; int upi_maxpktsize; int upi_epaddr; TYPE_1__* upi_handle; } ;
struct usb_endpoint {TYPE_1__* edesc; } ;
struct usb_device {scalar_t__ speed; } ;
struct ndis_softc {struct usb_device* ndisusb_dev; } ;
typedef int irp ;
typedef int int32_t ;
typedef int device_t ;


 int IRP_NDIS_DEV (int *) ;
 scalar_t__ UE_GET_XFERTYPE (int ) ;
 scalar_t__ UE_INTERRUPT ;
 int UGETW (int ) ;
 int USBD_STATUS_SUCCESS ;
 scalar_t__ USB_ERR_IN_USE ;
 scalar_t__ USB_ERR_NORMAL_COMPLETION ;
 scalar_t__ USB_SPEED_FULL ;
 scalar_t__ USB_SPEED_LOW ;
 struct ndis_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 struct usb_endpoint* usb_endpoint_foreach (struct usb_device*,struct usb_endpoint*) ;
 int usbd_errstr (scalar_t__) ;
 union usbd_urb* usbd_geturb (int *) ;
 scalar_t__ usbd_set_alt_interface_index (struct usb_device*,int ,int ) ;
 scalar_t__ usbd_setup_endpoint (int *,int ,TYPE_1__*) ;
 int usbd_usb2urb (scalar_t__) ;

__attribute__((used)) static int32_t
usbd_func_selconf(irp *ip)
{
 device_t dev = IRP_NDIS_DEV(ip);
 int i, j;
 struct ndis_softc *sc = device_get_softc(dev);
 struct usb_device *udev = sc->ndisusb_dev;
 struct usb_endpoint *ep = ((void*)0);
 struct usbd_interface_information *intf;
 struct usbd_pipe_information *pipe;
 struct usbd_urb_select_configuration *selconf;
 union usbd_urb *urb;
 usb_config_descriptor_t *conf;
 usb_endpoint_descriptor_t *edesc;
 usb_error_t ret;

 urb = usbd_geturb(ip);

 selconf = &urb->uu_selconf;
 conf = selconf->usc_conf;
 if (conf == ((void*)0)) {
  device_printf(dev, "select configuration is NULL\n");
  return usbd_usb2urb(USB_ERR_NORMAL_COMPLETION);
 }

 intf = &selconf->usc_intf;
 for (i = 0; i < conf->bNumInterface && intf->uii_len > 0; i++) {
  ret = usbd_set_alt_interface_index(udev,
      intf->uii_intfnum, intf->uii_altset);
  if (ret != USB_ERR_NORMAL_COMPLETION && ret != USB_ERR_IN_USE) {
   device_printf(dev,
       "setting alternate interface failed: %s\n",
       usbd_errstr(ret));
   return usbd_usb2urb(ret);
  }

  for (j = 0; (ep = usb_endpoint_foreach(udev, ep)); j++) {
   if (j >= intf->uii_numeps) {
    device_printf(dev,
        "endpoint %d and above are ignored",
        intf->uii_numeps);
    break;
   }
   edesc = ep->edesc;
   pipe = &intf->uii_pipes[j];
   pipe->upi_handle = edesc;
   pipe->upi_epaddr = edesc->bEndpointAddress;
   pipe->upi_maxpktsize = UGETW(edesc->wMaxPacketSize);
   pipe->upi_type = UE_GET_XFERTYPE(edesc->bmAttributes);

   ret = usbd_setup_endpoint(ip, intf->uii_intfnum, edesc);
   if (ret != USB_ERR_NORMAL_COMPLETION)
    return usbd_usb2urb(ret);

   if (pipe->upi_type != UE_INTERRUPT)
    continue;


   if (udev->speed == USB_SPEED_LOW)
    pipe->upi_interval = edesc->bInterval + 5;
   else if (udev->speed == USB_SPEED_FULL)
    pipe->upi_interval = edesc->bInterval;
   else {
    int k0 = 0, k1 = 1;
    do {
     k1 = k1 * 2;
     k0 = k0 + 1;
    } while (k1 < edesc->bInterval);
    pipe->upi_interval = k0;
   }
  }

  intf = (struct usbd_interface_information *)(((char *)intf) +
      intf->uii_len);
 }

 return (USBD_STATUS_SUCCESS);
}
