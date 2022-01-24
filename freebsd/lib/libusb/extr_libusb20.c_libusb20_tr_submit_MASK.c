#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct libusb20_transfer {int is_pending; TYPE_2__* pdev; scalar_t__ is_restart; scalar_t__ is_cancel; int /*<<< orphan*/  is_opened; } ;
struct TYPE_4__ {TYPE_1__* methods; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* tr_submit ) (struct libusb20_transfer*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct libusb20_transfer*) ; 

void
FUNC1(struct libusb20_transfer *xfer)
{
	if (!xfer->is_opened) {
		/* transfer is not opened */
		return;
	}
	if (xfer->is_pending) {
		/* should not happen */
		return;
	}
	xfer->is_pending = 1;		/* we are pending */
	xfer->is_cancel = 0;		/* not cancelling */
	xfer->is_restart = 0;		/* not restarting */

	xfer->pdev->methods->tr_submit(xfer);
	return;
}