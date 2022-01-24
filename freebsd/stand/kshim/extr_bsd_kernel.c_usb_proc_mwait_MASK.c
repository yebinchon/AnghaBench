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
struct usb_process {int /*<<< orphan*/  up_qhead; } ;
struct TYPE_2__ {int /*<<< orphan*/ * tqe_prev; } ;
struct usb_proc_msg {TYPE_1__ pm_qentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct usb_proc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pm_qentry ; 

void
FUNC1(struct usb_process *up, void *_pm0, void *_pm1)
{
	struct usb_proc_msg *pm0 = _pm0;
	struct usb_proc_msg *pm1 = _pm1;

	/* Just remove the messages from the queue. */
	if (pm0->pm_qentry.tqe_prev) {
		FUNC0(&up->up_qhead, pm0, pm_qentry);
		pm0->pm_qentry.tqe_prev = NULL;
	}
	if (pm1->pm_qentry.tqe_prev) {
		FUNC0(&up->up_qhead, pm1, pm_qentry);
		pm1->pm_qentry.tqe_prev = NULL;
	}
}