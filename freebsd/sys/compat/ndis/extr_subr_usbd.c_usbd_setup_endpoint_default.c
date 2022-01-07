
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef scalar_t__ uint8_t ;
struct ndis_softc {int ndisusb_dwrite_ep; int ndisusb_dread_ep; } ;
typedef int irp ;
typedef int device_t ;


 int IRP_NDIS_DEV (int *) ;
 size_t USBD_CTRL_READ_PIPE ;
 size_t USBD_CTRL_WRITE_PIPE ;
 scalar_t__ USB_ERR_NORMAL_COMPLETION ;
 struct ndis_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int * usbd_default_epconfig ;
 scalar_t__ usbd_setup_endpoint_one (int *,scalar_t__,int *,int *) ;

__attribute__((used)) static usb_error_t
usbd_setup_endpoint_default(irp *ip, uint8_t ifidx)
{
 device_t dev = IRP_NDIS_DEV(ip);
 struct ndis_softc *sc = device_get_softc(dev);
 usb_error_t status;

 if (ifidx > 0)
  device_printf(dev, "warning: ifidx > 0 isn't supported.\n");

 status = usbd_setup_endpoint_one(ip, ifidx, &sc->ndisusb_dread_ep,
     &usbd_default_epconfig[USBD_CTRL_READ_PIPE]);
 if (status != USB_ERR_NORMAL_COMPLETION)
  return (status);

 status = usbd_setup_endpoint_one(ip, ifidx, &sc->ndisusb_dwrite_ep,
     &usbd_default_epconfig[USBD_CTRL_WRITE_PIPE]);
 return (status);
}
