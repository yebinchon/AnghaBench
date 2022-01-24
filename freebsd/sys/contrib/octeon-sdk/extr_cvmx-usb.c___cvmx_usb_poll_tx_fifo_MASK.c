#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  ptxfspcavail; } ;
struct TYPE_13__ {TYPE_1__ s; void* u32; } ;
typedef  TYPE_3__ cvmx_usbcx_hptxsts_t ;
struct TYPE_12__ {int /*<<< orphan*/  nptxfspcavail; } ;
struct TYPE_14__ {TYPE_2__ s; void* u32; } ;
typedef  TYPE_4__ cvmx_usbcx_gnptxsts_t ;
struct TYPE_16__ {scalar_t__ head; scalar_t__ tail; } ;
struct TYPE_15__ {int /*<<< orphan*/  index; TYPE_9__ nonperiodic; TYPE_9__ periodic; } ;
typedef  TYPE_5__ cvmx_usb_internal_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (TYPE_5__*,TYPE_9__*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cvmx_usbcx_gintmsk_t ; 
 int /*<<< orphan*/  nptxfempmsk ; 
 int /*<<< orphan*/  ptxfempmsk ; 

__attribute__((used)) static void FUNC9(cvmx_usb_internal_state_t *usb)
{
    FUNC3();
    FUNC4("%p", usb);

    if (usb->periodic.head != usb->periodic.tail)
    {
        cvmx_usbcx_hptxsts_t tx_status;
        tx_status.u32 = FUNC8(usb, FUNC2(usb->index));
        if (FUNC7(usb, &usb->periodic, tx_status.s.ptxfspcavail))
            FUNC6(FUNC0(usb->index), cvmx_usbcx_gintmsk_t, ptxfempmsk, 1);
        else
            FUNC6(FUNC0(usb->index), cvmx_usbcx_gintmsk_t, ptxfempmsk, 0);
    }

    if (usb->nonperiodic.head != usb->nonperiodic.tail)
    {
        cvmx_usbcx_gnptxsts_t tx_status;
        tx_status.u32 = FUNC8(usb, FUNC1(usb->index));
        if (FUNC7(usb, &usb->nonperiodic, tx_status.s.nptxfspcavail))
            FUNC6(FUNC0(usb->index), cvmx_usbcx_gintmsk_t, nptxfempmsk, 1);
        else
            FUNC6(FUNC0(usb->index), cvmx_usbcx_gintmsk_t, nptxfempmsk, 0);
    }

    FUNC5();
}