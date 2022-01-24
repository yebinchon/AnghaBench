#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int xfersize; } ;
struct TYPE_18__ {TYPE_4__ s; void* u32; } ;
typedef  TYPE_5__ cvmx_usbcx_hctsizx_t ;
struct TYPE_14__ {scalar_t__ compsplt; scalar_t__ spltena; } ;
struct TYPE_19__ {TYPE_1__ s; void* u32; } ;
typedef  TYPE_6__ cvmx_usbcx_hcspltx_t ;
struct TYPE_15__ {scalar_t__ epdir; scalar_t__ eptype; } ;
struct TYPE_20__ {TYPE_2__ s; void* u32; } ;
typedef  TYPE_7__ cvmx_usbcx_hccharx_t ;
struct TYPE_21__ {size_t head; TYPE_3__* entry; } ;
typedef  TYPE_8__ cvmx_usb_tx_fifo_t ;
struct TYPE_22__ {int /*<<< orphan*/  index; TYPE_8__ nonperiodic; TYPE_8__ periodic; } ;
typedef  TYPE_9__ cvmx_usb_internal_state_t ;
struct TYPE_16__ {int channel; int size; int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ CVMX_USB_DIRECTION_OUT ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ CVMX_USB_TRANSFER_INTERRUPT ; 
 scalar_t__ CVMX_USB_TRANSFER_ISOCHRONOUS ; 
 size_t MAX_CHANNELS ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*) ; 
 void* FUNC8 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_9__*,scalar_t__) ; 

__attribute__((used)) static void FUNC10(cvmx_usb_internal_state_t *usb, int channel)
{
    cvmx_usbcx_hccharx_t hcchar;
    cvmx_usbcx_hcspltx_t usbc_hcsplt;
    cvmx_usbcx_hctsizx_t usbc_hctsiz;
    cvmx_usb_tx_fifo_t *fifo;

    FUNC4();
    FUNC5("%p", usb);
    FUNC5("%d", channel);

    /* We only need to fill data on outbound channels */
    hcchar.u32 = FUNC8(usb, FUNC0(channel, usb->index));
    if (hcchar.s.epdir != CVMX_USB_DIRECTION_OUT)
        FUNC6();

    /* OUT Splits only have data on the start and not the complete */
    usbc_hcsplt.u32 = FUNC8(usb, FUNC1(channel, usb->index));
    if (usbc_hcsplt.s.spltena && usbc_hcsplt.s.compsplt)
        FUNC6();

    /* Find out how many bytes we need to fill and convert it into 32bit words */
    usbc_hctsiz.u32 = FUNC8(usb, FUNC2(channel, usb->index));
    if (!usbc_hctsiz.s.xfersize)
        FUNC6();

    if ((hcchar.s.eptype == CVMX_USB_TRANSFER_INTERRUPT) ||
        (hcchar.s.eptype == CVMX_USB_TRANSFER_ISOCHRONOUS))
        fifo = &usb->periodic;
    else
        fifo = &usb->nonperiodic;

    fifo->entry[fifo->head].channel = channel;
    fifo->entry[fifo->head].address = FUNC9(usb, FUNC3(usb->index) + channel*8);
    fifo->entry[fifo->head].size = (usbc_hctsiz.s.xfersize+3)>>2;
    fifo->head++;
    if (fifo->head > MAX_CHANNELS)
        fifo->head = 0;

    FUNC7(usb);

    FUNC6();
}