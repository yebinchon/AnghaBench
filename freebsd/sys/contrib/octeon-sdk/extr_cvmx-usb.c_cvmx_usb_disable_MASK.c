#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cvmx_usb_status_t ;
typedef  int /*<<< orphan*/  cvmx_usb_state_t ;
struct TYPE_2__ {int /*<<< orphan*/  index; } ;
typedef  TYPE_1__ cvmx_usb_internal_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CVMX_USB_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cvmx_usbcx_hprt_t ; 
 int /*<<< orphan*/  prtena ; 

cvmx_usb_status_t FUNC5(cvmx_usb_state_t *state)
{
    cvmx_usb_internal_state_t *usb = (cvmx_usb_internal_state_t*)state;

    FUNC1();
    FUNC2("%p", state);

    /* Disable the port */
    FUNC4(FUNC0(usb->index), cvmx_usbcx_hprt_t, prtena, 1);
    FUNC3(CVMX_USB_SUCCESS);
}