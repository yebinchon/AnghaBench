#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  index; } ;
typedef  TYPE_2__ cvmx_usbd_state_t ;
struct TYPE_6__ {int devaddr; } ;
struct TYPE_8__ {TYPE_1__ s; int /*<<< orphan*/  u32; } ;
typedef  TYPE_3__ cvmx_usbcx_dcfg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 

int FUNC2(cvmx_usbd_state_t *usb)
{
    cvmx_usbcx_dcfg_t usbc_dcfg;
    usbc_dcfg.u32 = FUNC1(usb, FUNC0(usb->index));
    return usbc_dcfg.s.devaddr;
}