
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int ptxfspcavail; } ;
struct TYPE_13__ {TYPE_1__ s; void* u32; } ;
typedef TYPE_3__ cvmx_usbcx_hptxsts_t ;
struct TYPE_12__ {int nptxfspcavail; } ;
struct TYPE_14__ {TYPE_2__ s; void* u32; } ;
typedef TYPE_4__ cvmx_usbcx_gnptxsts_t ;
struct TYPE_16__ {scalar_t__ head; scalar_t__ tail; } ;
struct TYPE_15__ {int index; TYPE_9__ nonperiodic; TYPE_9__ periodic; } ;
typedef TYPE_5__ cvmx_usb_internal_state_t ;


 int CVMX_USBCX_GINTMSK (int ) ;
 int CVMX_USBCX_GNPTXSTS (int ) ;
 int CVMX_USBCX_HPTXSTS (int ) ;
 int CVMX_USB_LOG_CALLED () ;
 int CVMX_USB_LOG_PARAM (char*,TYPE_5__*) ;
 int CVMX_USB_RETURN_NOTHING () ;
 int USB_SET_FIELD32 (int ,int ,int ,int) ;
 scalar_t__ __cvmx_usb_fill_tx_hw (TYPE_5__*,TYPE_9__*,int ) ;
 void* __cvmx_usb_read_csr32 (TYPE_5__*,int ) ;
 int cvmx_usbcx_gintmsk_t ;
 int nptxfempmsk ;
 int ptxfempmsk ;

__attribute__((used)) static void __cvmx_usb_poll_tx_fifo(cvmx_usb_internal_state_t *usb)
{
    CVMX_USB_LOG_CALLED();
    CVMX_USB_LOG_PARAM("%p", usb);

    if (usb->periodic.head != usb->periodic.tail)
    {
        cvmx_usbcx_hptxsts_t tx_status;
        tx_status.u32 = __cvmx_usb_read_csr32(usb, CVMX_USBCX_HPTXSTS(usb->index));
        if (__cvmx_usb_fill_tx_hw(usb, &usb->periodic, tx_status.s.ptxfspcavail))
            USB_SET_FIELD32(CVMX_USBCX_GINTMSK(usb->index), cvmx_usbcx_gintmsk_t, ptxfempmsk, 1);
        else
            USB_SET_FIELD32(CVMX_USBCX_GINTMSK(usb->index), cvmx_usbcx_gintmsk_t, ptxfempmsk, 0);
    }

    if (usb->nonperiodic.head != usb->nonperiodic.tail)
    {
        cvmx_usbcx_gnptxsts_t tx_status;
        tx_status.u32 = __cvmx_usb_read_csr32(usb, CVMX_USBCX_GNPTXSTS(usb->index));
        if (__cvmx_usb_fill_tx_hw(usb, &usb->nonperiodic, tx_status.s.nptxfspcavail))
            USB_SET_FIELD32(CVMX_USBCX_GINTMSK(usb->index), cvmx_usbcx_gintmsk_t, nptxfempmsk, 1);
        else
            USB_SET_FIELD32(CVMX_USBCX_GINTMSK(usb->index), cvmx_usbcx_gintmsk_t, nptxfempmsk, 0);
    }

    CVMX_USB_RETURN_NOTHING();
}
