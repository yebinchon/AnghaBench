
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
struct ndisusb_xferdone {int nd_donelist; int nd_status; struct ndisusb_xfer* nd_xfer; } ;
struct ndisusb_xfer {int dummy; } ;
struct ndisusb_ep {int dummy; } ;
struct ndis_softc {int ndisusb_xferdoneitem; int ndisusb_xferdonelock; int ndisusb_xferdonelist; int ndis_dev; } ;
typedef int io_workitem_func ;


 int InsertTailList (int *,int *) ;
 int IoQueueWorkItem (int ,int ,int ,struct ndis_softc*) ;
 int KeAcquireSpinLock (int *,int *) ;
 int KeReleaseSpinLock (int *,int ) ;
 int M_NOWAIT ;
 int M_USBDEV ;
 int M_ZERO ;
 int WORKQUEUE_CRITICAL ;
 int device_printf (int ,char*) ;
 struct ndisusb_xferdone* malloc (int,int ,int) ;
 scalar_t__ usbd_xfertask_wrap ;

__attribute__((used)) static void
usbd_xfer_complete(struct ndis_softc *sc, struct ndisusb_ep *ne,
    struct ndisusb_xfer *nx, usb_error_t status)
{
 struct ndisusb_xferdone *nd;
 uint8_t irql;

 nd = malloc(sizeof(struct ndisusb_xferdone), M_USBDEV,
     M_NOWAIT | M_ZERO);
 if (nd == ((void*)0)) {
  device_printf(sc->ndis_dev, "out of memory");
  return;
 }
 nd->nd_xfer = nx;
 nd->nd_status = status;

 KeAcquireSpinLock(&sc->ndisusb_xferdonelock, &irql);
 InsertTailList((&sc->ndisusb_xferdonelist), (&nd->nd_donelist));
 KeReleaseSpinLock(&sc->ndisusb_xferdonelock, irql);

 IoQueueWorkItem(sc->ndisusb_xferdoneitem,
     (io_workitem_func)usbd_xfertask_wrap, WORKQUEUE_CRITICAL, sc);
}
