
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int upr_handle; } ;
union usbd_urb {TYPE_1__ uu_pipe; } ;
struct ndisusb_ep {int * ne_xfer; } ;
struct ndis_softc {int dummy; } ;
typedef int irp ;
typedef int int32_t ;
typedef int device_t ;


 int IRP_NDIS_DEV (int *) ;
 int NDISUSB_LOCK (struct ndis_softc*) ;
 int NDISUSB_UNLOCK (struct ndis_softc*) ;
 int USBD_STATUS_INVALID_PIPE_HANDLE ;
 int USBD_STATUS_SUCCESS ;
 struct ndis_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 struct ndisusb_ep* usbd_get_ndisep (int *,int ) ;
 union usbd_urb* usbd_geturb (int *) ;
 int usbd_transfer_start (int ) ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static int32_t
usbd_func_abort_pipe(irp *ip)
{
 device_t dev = IRP_NDIS_DEV(ip);
 struct ndis_softc *sc = device_get_softc(dev);
 struct ndisusb_ep *ne;
 union usbd_urb *urb;

 urb = usbd_geturb(ip);
 ne = usbd_get_ndisep(ip, urb->uu_pipe.upr_handle);
 if (ne == ((void*)0)) {
  device_printf(IRP_NDIS_DEV(ip), "get NULL endpoint info.\n");
  return (USBD_STATUS_INVALID_PIPE_HANDLE);
 }

 NDISUSB_LOCK(sc);
 usbd_transfer_stop(ne->ne_xfer[0]);
 usbd_transfer_start(ne->ne_xfer[0]);
 NDISUSB_UNLOCK(sc);

 return (USBD_STATUS_SUCCESS);
}
