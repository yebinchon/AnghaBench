
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ndisusb_task {unsigned int nt_type; int nt_tasklist; int * nt_ctx; } ;
struct ndis_softc {int ndisusb_taskitem; int ndisusb_tasklock; int ndisusb_tasklist; } ;
typedef int irp ;
typedef int io_workitem_func ;
typedef int int32_t ;
typedef int device_t ;


 int IRP_NDIS_DEV (int *) ;
 int InsertTailList (int *,int *) ;
 int IoQueueWorkItem (int ,int ,int ,struct ndis_softc*) ;
 int KeAcquireSpinLockAtDpcLevel (int *) ;
 int KeReleaseSpinLockFromDpcLevel (int *) ;
 int M_NOWAIT ;
 int M_USBDEV ;
 int M_ZERO ;
 int USBD_STATUS_NO_MEMORY ;
 int USBD_STATUS_SUCCESS ;
 int WORKQUEUE_CRITICAL ;
 struct ndis_softc* device_get_softc (int ) ;
 struct ndisusb_task* malloc (int,int ,int) ;
 scalar_t__ usbd_task_wrap ;

__attribute__((used)) static int32_t
usbd_taskadd(irp *ip, unsigned type)
{
 device_t dev = IRP_NDIS_DEV(ip);
 struct ndis_softc *sc = device_get_softc(dev);
 struct ndisusb_task *nt;

 nt = malloc(sizeof(struct ndisusb_task), M_USBDEV, M_NOWAIT | M_ZERO);
 if (nt == ((void*)0))
  return (USBD_STATUS_NO_MEMORY);
 nt->nt_type = type;
 nt->nt_ctx = ip;

 KeAcquireSpinLockAtDpcLevel(&sc->ndisusb_tasklock);
 InsertTailList((&sc->ndisusb_tasklist), (&nt->nt_tasklist));
 KeReleaseSpinLockFromDpcLevel(&sc->ndisusb_tasklock);

 IoQueueWorkItem(sc->ndisusb_taskitem,
     (io_workitem_func)usbd_task_wrap, WORKQUEUE_CRITICAL, sc);

 return (USBD_STATUS_SUCCESS);
}
