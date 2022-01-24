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
struct usb_xfer {int dummy; } ;
struct urb {int /*<<< orphan*/  (* complete ) (struct urb*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct urb*) ; 
 struct urb* FUNC1 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_xfer*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct usb_xfer *xfer)
{
	struct urb *urb;

	urb = FUNC1(xfer);
	FUNC2(xfer, NULL);
	if (urb->complete) {
		(urb->complete) (urb);
	}
}