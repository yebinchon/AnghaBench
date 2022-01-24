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
struct vhpet {int /*<<< orphan*/  vm; TYPE_1__* timer; } ;
typedef  scalar_t__ sbintime_t ;
struct TYPE_2__ {scalar_t__ callout_sbt; int /*<<< orphan*/  callout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vhpet*,int) ; 

__attribute__((used)) static void
FUNC3(struct vhpet *vhpet, int n, sbintime_t now)
{

	FUNC0(vhpet->vm, "hpet t%d stopped", n);
	FUNC1(&vhpet->timer[n].callout);

	/*
	 * If the callout was scheduled to expire in the past but hasn't
	 * had a chance to execute yet then trigger the timer interrupt
	 * here. Failing to do so will result in a missed timer interrupt
	 * in the guest. This is especially bad in one-shot mode because
	 * the next interrupt has to wait for the counter to wrap around.
	 */
	if (vhpet->timer[n].callout_sbt < now) {
		FUNC0(vhpet->vm, "hpet t%d interrupt triggered after "
		    "stopping timer", n);
		FUNC2(vhpet, n);
	}
}