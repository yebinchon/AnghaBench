
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
struct usb_xfer {int dummy; } ;
struct usb_config {int dummy; } ;
struct ndisusb_ep {struct usb_xfer** ne_xfer; int ne_lock; int ne_pending; int ne_active; } ;
struct ndis_softc {int ndisusb_mtx; int ndisusb_dev; } ;
typedef int irp ;
typedef int device_t ;


 int IRP_NDIS_DEV (int *) ;
 int InitializeListHead (int *) ;
 int KeInitializeSpinLock (int *) ;
 scalar_t__ USB_ERR_NORMAL_COMPLETION ;
 struct ndis_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int ) ;
 int usbd_errstr (scalar_t__) ;
 scalar_t__ usbd_transfer_setup (int ,int *,struct usb_xfer**,struct usb_config*,int,struct ndis_softc*,int *) ;
 int usbd_xfer_set_priv (struct usb_xfer*,struct ndisusb_ep*) ;

__attribute__((used)) static usb_error_t
usbd_setup_endpoint_one(irp *ip, uint8_t ifidx, struct ndisusb_ep *ne,
    struct usb_config *epconf)
{
 device_t dev = IRP_NDIS_DEV(ip);
 struct ndis_softc *sc = device_get_softc(dev);
 struct usb_xfer *xfer;
 usb_error_t status;

 InitializeListHead(&ne->ne_active);
 InitializeListHead(&ne->ne_pending);
 KeInitializeSpinLock(&ne->ne_lock);

 status = usbd_transfer_setup(sc->ndisusb_dev, &ifidx, ne->ne_xfer,
     epconf, 1, sc, &sc->ndisusb_mtx);
 if (status != USB_ERR_NORMAL_COMPLETION) {
  device_printf(dev, "couldn't setup xfer: %s\n",
      usbd_errstr(status));
  return (status);
 }
 xfer = ne->ne_xfer[0];
 usbd_xfer_set_priv(xfer, ne);

 return (status);
}
