#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ prtena; } ;
struct TYPE_20__ {void* u32; TYPE_2__ s; } ;
typedef  TYPE_4__ cvmx_usbcx_hprt_t ;
struct TYPE_17__ {int frnum; } ;
struct TYPE_21__ {TYPE_1__ s; void* u32; } ;
typedef  TYPE_5__ cvmx_usbcx_hfnum_t ;
struct TYPE_22__ {int u32; } ;
typedef  TYPE_6__ cvmx_usbcx_haint_t ;
struct TYPE_19__ {int /*<<< orphan*/  sof; scalar_t__ hchint; scalar_t__ prtint; scalar_t__ disconnint; scalar_t__ nptxfemp; scalar_t__ ptxfemp; scalar_t__ rxflvl; } ;
struct TYPE_23__ {TYPE_3__ s; void* u32; } ;
typedef  TYPE_7__ cvmx_usbcx_gintsts_t ;
typedef  int /*<<< orphan*/  cvmx_usb_status_t ;
typedef  int /*<<< orphan*/  cvmx_usb_state_t ;
struct TYPE_24__ {int frame_number; int init_flags; int /*<<< orphan*/  index; } ;
typedef  TYPE_8__ cvmx_usb_internal_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CVMX_USB_CALLBACK_PORT_CHANGED ; 
 int /*<<< orphan*/  CVMX_USB_COMPLETE_SUCCESS ; 
 int CVMX_USB_INITIALIZE_FLAGS_NO_DMA ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CVMX_USB_SUCCESS ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_8__*) ; 
 void* FUNC13 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_8__*,int /*<<< orphan*/ ,void*) ; 

cvmx_usb_status_t FUNC16(cvmx_usb_state_t *state)
{
    cvmx_usbcx_hfnum_t usbc_hfnum;
    cvmx_usbcx_gintsts_t usbc_gintsts;
    cvmx_usb_internal_state_t *usb = (cvmx_usb_internal_state_t*)state;

    FUNC1(usb, 0);
    FUNC1(usb, 1*128);
    FUNC1(usb, 2*128);
    FUNC1(usb, 3*128);
    FUNC1(usb, 4*128);

    FUNC6();
    FUNC7("%p", state);

    /* Update the frame counter */
    usbc_hfnum.u32 = FUNC13(usb, FUNC4(usb->index));
    if ((usb->frame_number&0x3fff) > usbc_hfnum.s.frnum)
        usb->frame_number += 0x4000;
    usb->frame_number &= ~0x3fffull;
    usb->frame_number |= usbc_hfnum.s.frnum;

    /* Read the pending interrupts */
    usbc_gintsts.u32 = FUNC13(usb, FUNC2(usb->index));

    /* Clear the interrupts now that we know about them */
    FUNC15(usb, FUNC2(usb->index), usbc_gintsts.u32);

    if (usbc_gintsts.s.rxflvl)
    {
        /* RxFIFO Non-Empty (RxFLvl)
            Indicates that there is at least one packet pending to be read
            from the RxFIFO. */
        /* In DMA mode this is handled by hardware */
        if (usb->init_flags & CVMX_USB_INITIALIZE_FLAGS_NO_DMA)
            FUNC11(usb);
    }
    if (usbc_gintsts.s.ptxfemp || usbc_gintsts.s.nptxfemp)
    {
        /* Fill the Tx FIFOs when not in DMA mode */
        if (usb->init_flags & CVMX_USB_INITIALIZE_FLAGS_NO_DMA)
            FUNC12(usb);
    }
    if (usbc_gintsts.s.disconnint || usbc_gintsts.s.prtint)
    {
        cvmx_usbcx_hprt_t usbc_hprt;
        /* Disconnect Detected Interrupt (DisconnInt)
            Asserted when a device disconnect is detected. */

        /* Host Port Interrupt (PrtInt)
            The core sets this bit to indicate a change in port status of one
            of the O2P USB core ports in Host mode. The application must
            read the Host Port Control and Status (HPRT) register to
            determine the exact event that caused this interrupt. The
            application must clear the appropriate status bit in the Host Port
            Control and Status register to clear this bit. */

        /* Call the user's port callback */
        FUNC9(usb, NULL, NULL,
                                    CVMX_USB_CALLBACK_PORT_CHANGED,
                                    CVMX_USB_COMPLETE_SUCCESS);
        /* Clear the port change bits */
        usbc_hprt.u32 = FUNC13(usb, FUNC5(usb->index));
        usbc_hprt.s.prtena = 0;
        FUNC15(usb, FUNC5(usb->index), usbc_hprt.u32);
    }
    if (usbc_gintsts.s.hchint)
    {
        /* Host Channels Interrupt (HChInt)
            The core sets this bit to indicate that an interrupt is pending on
            one of the channels of the core (in Host mode). The application
            must read the Host All Channels Interrupt (HAINT) register to
            determine the exact number of the channel on which the
            interrupt occurred, and then read the corresponding Host
            Channel-n Interrupt (HCINTn) register to determine the exact
            cause of the interrupt. The application must clear the
            appropriate status bit in the HCINTn register to clear this bit. */
        cvmx_usbcx_haint_t usbc_haint;
        usbc_haint.u32 = FUNC13(usb, FUNC3(usb->index));
        while (usbc_haint.u32)
        {
            int channel;
            FUNC0(channel, usbc_haint.u32);
            channel = 31 - channel;
            FUNC10(usb, channel);
            usbc_haint.u32 ^= 1<<channel;
        }
    }

    FUNC14(usb, usbc_gintsts.s.sof);

    FUNC8(CVMX_USB_SUCCESS);
}