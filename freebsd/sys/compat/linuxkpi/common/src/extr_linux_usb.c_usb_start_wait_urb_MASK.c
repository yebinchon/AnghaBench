#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int usb_timeout_t ;
typedef  int uint8_t ;
typedef  scalar_t__ uint16_t ;
struct urb {int timeout; int transfer_flags; int status; scalar_t__ actual_length; int /*<<< orphan*/  cv_wait; int /*<<< orphan*/ * complete; } ;

/* Variables and functions */
 int /*<<< orphan*/  Giant ; 
 int URB_IS_SLEEPING ; 
 int URB_WAIT_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usb_linux_wait_complete ; 
 int FUNC4 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct urb *urb, usb_timeout_t timeout, uint16_t *p_actlen)
{
	int err;
	uint8_t do_unlock;

	/* you must have a timeout! */
	if (timeout == 0) {
		timeout = 1;
	}
	urb->complete = &usb_linux_wait_complete;
	urb->timeout = timeout;
	urb->transfer_flags |= URB_WAIT_WAKEUP;
	urb->transfer_flags &= ~URB_IS_SLEEPING;

	do_unlock = FUNC2(&Giant) ? 0 : 1;
	if (do_unlock)
		FUNC1(&Giant);
	err = FUNC4(urb, 0);
	if (err)
		goto done;

	/*
	 * the URB might have completed before we get here, so check that by
	 * using some flags!
	 */
	while (urb->transfer_flags & URB_WAIT_WAKEUP) {
		urb->transfer_flags |= URB_IS_SLEEPING;
		FUNC0(&urb->cv_wait, &Giant);
		urb->transfer_flags &= ~URB_IS_SLEEPING;
	}

	err = urb->status;

done:
	if (do_unlock)
		FUNC3(&Giant);
	if (p_actlen != NULL) {
		if (err)
			*p_actlen = 0;
		else
			*p_actlen = urb->actual_length;
	}
	return (err);
}