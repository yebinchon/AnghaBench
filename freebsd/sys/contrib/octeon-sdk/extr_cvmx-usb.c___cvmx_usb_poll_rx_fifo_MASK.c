#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_9__ {int pktsts; int bcnt; int chnum; } ;
struct TYPE_10__ {TYPE_1__ s; void* u32; } ;
typedef  TYPE_2__ cvmx_usbcx_grxstsph_t ;
struct TYPE_11__ {int /*<<< orphan*/  index; } ;
typedef  TYPE_3__ cvmx_usb_internal_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_SYNCW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__) ; 

__attribute__((used)) static void FUNC10(cvmx_usb_internal_state_t *usb)
{
    cvmx_usbcx_grxstsph_t rx_status;
    int channel;
    int bytes;
    uint64_t address;
    uint32_t *ptr;

    FUNC2();
    FUNC3("%p", usb);

    rx_status.u32 = FUNC6(usb, FUNC0(usb->index));
    /* Only read data if IN data is there */
    if (rx_status.s.pktsts != 2)
        FUNC4();
    /* Check if no data is available */
    if (!rx_status.s.bcnt)
        FUNC4();

    channel = rx_status.s.chnum;
    bytes = rx_status.s.bcnt;
    if (!bytes)
        FUNC4();

    /* Get where the DMA engine would have written this data */
    address = FUNC7(usb, FUNC1(usb->index) + channel*8);
    ptr = FUNC9(address);
    FUNC8(usb, FUNC1(usb->index) + channel*8, address + bytes);

    /* Loop writing the FIFO data for this packet into memory */
    while (bytes > 0)
    {
        *ptr++ = FUNC6(usb, FUNC5(channel, usb->index));
        bytes -= 4;
    }
    CVMX_SYNCW;

    FUNC4();
}