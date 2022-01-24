#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ipt_wrap; int /*<<< orphan*/ * ipt_func; } ;
typedef  TYPE_2__ image_patch_table ;
struct TYPE_5__ {int /*<<< orphan*/  us_buf; } ;
struct TYPE_7__ {TYPE_1__ dro_drivername; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ usbd_driver ; 
 TYPE_2__* usbd_functbl ; 
 int /*<<< orphan*/  usbd_iodispatch_wrap ; 
 int /*<<< orphan*/  usbd_ioinvalid_wrap ; 
 int /*<<< orphan*/  usbd_irpcancel_wrap ; 
 int /*<<< orphan*/  usbd_pnp_wrap ; 
 int /*<<< orphan*/  usbd_power_wrap ; 
 int /*<<< orphan*/  usbd_task_wrap ; 
 int /*<<< orphan*/  usbd_xfertask_wrap ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(void)
{
	image_patch_table	*patch;

	patch = usbd_functbl;
	while (patch->ipt_func != NULL) {
		FUNC1(patch->ipt_wrap);
		patch++;
	}

	FUNC1(usbd_ioinvalid_wrap);
	FUNC1(usbd_iodispatch_wrap);
	FUNC1(usbd_pnp_wrap);
	FUNC1(usbd_power_wrap);
	FUNC1(usbd_irpcancel_wrap);
	FUNC1(usbd_task_wrap);
	FUNC1(usbd_xfertask_wrap);

	FUNC0(usbd_driver.dro_drivername.us_buf, M_DEVBUF);

	return (0);
}