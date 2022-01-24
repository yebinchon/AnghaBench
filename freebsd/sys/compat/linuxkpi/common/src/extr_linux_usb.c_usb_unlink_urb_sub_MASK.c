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
typedef  int uint8_t ;
typedef  size_t uint16_t ;
struct usb_host_endpoint {int /*<<< orphan*/ * bsd_xfer; int /*<<< orphan*/  bsd_urb_list; } ;
struct TYPE_3__ {int /*<<< orphan*/ * tqe_prev; } ;
struct urb {size_t number_of_packets; int /*<<< orphan*/  kill_count; int /*<<< orphan*/  (* complete ) (struct urb*) ;TYPE_2__* iso_frame_desc; scalar_t__ actual_length; int /*<<< orphan*/  status; TYPE_1__ bsd_urb_list; struct usb_host_endpoint* endpoint; } ;
struct TYPE_4__ {scalar_t__ actual_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNRESET ; 
 int EINVAL ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bsd_urb_list ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct urb*,int) ; 

__attribute__((used)) static int
FUNC6(struct urb *urb, uint8_t drain)
{
	struct usb_host_endpoint *uhe;
	uint16_t x;
	uint8_t do_unlock;
	int err;

	if (urb == NULL)
		return (-EINVAL);

	do_unlock = FUNC2(&Giant) ? 0 : 1;
	if (do_unlock)
		FUNC1(&Giant);
	if (drain)
		urb->kill_count++;

	if (urb->endpoint == NULL) {
		err = -EINVAL;
		goto done;
	}
	uhe = urb->endpoint;

	if (urb->bsd_urb_list.tqe_prev) {

		/* not started yet, just remove it from the queue */
		FUNC0(&uhe->bsd_urb_list, urb, bsd_urb_list);
		urb->bsd_urb_list.tqe_prev = NULL;
		urb->status = -ECONNRESET;
		urb->actual_length = 0;

		for (x = 0; x < urb->number_of_packets; x++) {
			urb->iso_frame_desc[x].actual_length = 0;
		}

		if (urb->complete) {
			(urb->complete) (urb);
		}
	} else {

		/*
		 * If the URB is not on the URB list, then check if one of
		 * the FreeBSD USB transfer are processing the current URB.
		 * If so, re-start that transfer, which will lead to the
		 * termination of that URB:
		 */
		FUNC5(uhe->bsd_xfer[0], urb, drain);
		FUNC5(uhe->bsd_xfer[1], urb, drain);
	}
	err = 0;
done:
	if (drain)
		urb->kill_count--;
	if (do_unlock)
		FUNC3(&Giant);
	return (err);
}