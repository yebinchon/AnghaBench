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
typedef  int /*<<< orphan*/  uint32_t ;
struct vhpet_callout_arg {int timer_num; struct vhpet* vhpet; } ;
struct vhpet {int /*<<< orphan*/  vm; TYPE_1__* timer; } ;
struct callout {int dummy; } ;
typedef  int /*<<< orphan*/  sbintime_t ;
struct TYPE_2__ {struct callout callout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vhpet*) ; 
 int /*<<< orphan*/  FUNC1 (struct vhpet*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct callout*) ; 
 int /*<<< orphan*/  FUNC4 (struct callout*) ; 
 scalar_t__ FUNC5 (struct callout*) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct vhpet*) ; 
 int /*<<< orphan*/  FUNC7 (struct vhpet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct vhpet*) ; 
 int /*<<< orphan*/  FUNC9 (struct vhpet*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct vhpet*,int) ; 

__attribute__((used)) static void
FUNC11(void *a)
{
	int n;
	uint32_t counter;
	sbintime_t now;
	struct vhpet *vhpet;
	struct callout *callout;
	struct vhpet_callout_arg *arg;

	arg = a;
	vhpet = arg->vhpet;
	n = arg->timer_num;
	callout = &vhpet->timer[n].callout;

	FUNC2(vhpet->vm, "hpet t%d fired", n);

	FUNC0(vhpet);

	if (FUNC5(callout))		/* callout was reset */
		goto done;

	if (!FUNC3(callout))		/* callout was stopped */
		goto done;

	FUNC4(callout);

	if (!FUNC8(vhpet))
		FUNC6("vhpet(%p) callout with counter disabled", vhpet);

	counter = FUNC7(vhpet, &now);
	FUNC9(vhpet, n, counter, now);
	FUNC10(vhpet, n);
done:
	FUNC1(vhpet);
	return;
}