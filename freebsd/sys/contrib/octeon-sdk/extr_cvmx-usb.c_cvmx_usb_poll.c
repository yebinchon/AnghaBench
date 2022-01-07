
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ prtena; } ;
struct TYPE_20__ {void* u32; TYPE_2__ s; } ;
typedef TYPE_4__ cvmx_usbcx_hprt_t ;
struct TYPE_17__ {int frnum; } ;
struct TYPE_21__ {TYPE_1__ s; void* u32; } ;
typedef TYPE_5__ cvmx_usbcx_hfnum_t ;
struct TYPE_22__ {int u32; } ;
typedef TYPE_6__ cvmx_usbcx_haint_t ;
struct TYPE_19__ {int sof; scalar_t__ hchint; scalar_t__ prtint; scalar_t__ disconnint; scalar_t__ nptxfemp; scalar_t__ ptxfemp; scalar_t__ rxflvl; } ;
struct TYPE_23__ {TYPE_3__ s; void* u32; } ;
typedef TYPE_7__ cvmx_usbcx_gintsts_t ;
typedef int cvmx_usb_status_t ;
typedef int cvmx_usb_state_t ;
struct TYPE_24__ {int frame_number; int init_flags; int index; } ;
typedef TYPE_8__ cvmx_usb_internal_state_t ;


 int CVMX_CLZ (int,int) ;
 int CVMX_PREFETCH (TYPE_8__*,int) ;
 int CVMX_USBCX_GINTSTS (int ) ;
 int CVMX_USBCX_HAINT (int ) ;
 int CVMX_USBCX_HFNUM (int ) ;
 int CVMX_USBCX_HPRT (int ) ;
 int CVMX_USB_CALLBACK_PORT_CHANGED ;
 int CVMX_USB_COMPLETE_SUCCESS ;
 int CVMX_USB_INITIALIZE_FLAGS_NO_DMA ;
 int CVMX_USB_LOG_CALLED () ;
 int CVMX_USB_LOG_PARAM (char*,int *) ;
 int CVMX_USB_RETURN (int ) ;
 int CVMX_USB_SUCCESS ;
 int __cvmx_usb_perform_callback (TYPE_8__*,int *,int *,int ,int ) ;
 int __cvmx_usb_poll_channel (TYPE_8__*,int) ;
 int __cvmx_usb_poll_rx_fifo (TYPE_8__*) ;
 int __cvmx_usb_poll_tx_fifo (TYPE_8__*) ;
 void* __cvmx_usb_read_csr32 (TYPE_8__*,int ) ;
 int __cvmx_usb_schedule (TYPE_8__*,int ) ;
 int __cvmx_usb_write_csr32 (TYPE_8__*,int ,void*) ;

cvmx_usb_status_t cvmx_usb_poll(cvmx_usb_state_t *state)
{
    cvmx_usbcx_hfnum_t usbc_hfnum;
    cvmx_usbcx_gintsts_t usbc_gintsts;
    cvmx_usb_internal_state_t *usb = (cvmx_usb_internal_state_t*)state;

    CVMX_PREFETCH(usb, 0);
    CVMX_PREFETCH(usb, 1*128);
    CVMX_PREFETCH(usb, 2*128);
    CVMX_PREFETCH(usb, 3*128);
    CVMX_PREFETCH(usb, 4*128);

    CVMX_USB_LOG_CALLED();
    CVMX_USB_LOG_PARAM("%p", state);


    usbc_hfnum.u32 = __cvmx_usb_read_csr32(usb, CVMX_USBCX_HFNUM(usb->index));
    if ((usb->frame_number&0x3fff) > usbc_hfnum.s.frnum)
        usb->frame_number += 0x4000;
    usb->frame_number &= ~0x3fffull;
    usb->frame_number |= usbc_hfnum.s.frnum;


    usbc_gintsts.u32 = __cvmx_usb_read_csr32(usb, CVMX_USBCX_GINTSTS(usb->index));


    __cvmx_usb_write_csr32(usb, CVMX_USBCX_GINTSTS(usb->index), usbc_gintsts.u32);

    if (usbc_gintsts.s.rxflvl)
    {




        if (usb->init_flags & CVMX_USB_INITIALIZE_FLAGS_NO_DMA)
            __cvmx_usb_poll_rx_fifo(usb);
    }
    if (usbc_gintsts.s.ptxfemp || usbc_gintsts.s.nptxfemp)
    {

        if (usb->init_flags & CVMX_USB_INITIALIZE_FLAGS_NO_DMA)
            __cvmx_usb_poll_tx_fifo(usb);
    }
    if (usbc_gintsts.s.disconnint || usbc_gintsts.s.prtint)
    {
        cvmx_usbcx_hprt_t usbc_hprt;
        __cvmx_usb_perform_callback(usb, ((void*)0), ((void*)0),
                                    CVMX_USB_CALLBACK_PORT_CHANGED,
                                    CVMX_USB_COMPLETE_SUCCESS);

        usbc_hprt.u32 = __cvmx_usb_read_csr32(usb, CVMX_USBCX_HPRT(usb->index));
        usbc_hprt.s.prtena = 0;
        __cvmx_usb_write_csr32(usb, CVMX_USBCX_HPRT(usb->index), usbc_hprt.u32);
    }
    if (usbc_gintsts.s.hchint)
    {
        cvmx_usbcx_haint_t usbc_haint;
        usbc_haint.u32 = __cvmx_usb_read_csr32(usb, CVMX_USBCX_HAINT(usb->index));
        while (usbc_haint.u32)
        {
            int channel;
            CVMX_CLZ(channel, usbc_haint.u32);
            channel = 31 - channel;
            __cvmx_usb_poll_channel(usb, channel);
            usbc_haint.u32 ^= 1<<channel;
        }
    }

    __cvmx_usb_schedule(usb, usbc_gintsts.s.sof);

    CVMX_USB_RETURN(CVMX_USB_SUCCESS);
}
