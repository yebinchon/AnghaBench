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
struct urb {int /*<<< orphan*/  cv_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_USBDEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*) ; 

void
FUNC3(struct urb *urb)
{
	if (urb == NULL) {
		return;
	}
	/* make sure that the current URB is not active */
	FUNC2(urb);

	/* destroy condition variable */
	FUNC0(&urb->cv_wait);

	/* just free it */
	FUNC1(urb, M_USBDEV);
}