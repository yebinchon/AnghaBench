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
struct vatpit_callout_arg {size_t channel_num; struct vatpit* vatpit; } ;
struct vatpit {int /*<<< orphan*/  vm; struct channel* channel; } ;
struct callout {int dummy; } ;
struct channel {scalar_t__ mode; struct callout callout; } ;

/* Variables and functions */
 scalar_t__ TIMER_RATEGEN ; 
 int /*<<< orphan*/  FUNC0 (struct vatpit*) ; 
 int /*<<< orphan*/  FUNC1 (struct vatpit*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct callout*) ; 
 int /*<<< orphan*/  FUNC4 (struct callout*) ; 
 scalar_t__ FUNC5 (struct callout*) ; 
 int /*<<< orphan*/  FUNC6 (struct vatpit*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(void *a)
{
	struct vatpit_callout_arg *arg = a;
	struct vatpit *vatpit;
	struct callout *callout;
	struct channel *c;

	vatpit = arg->vatpit;
	c = &vatpit->channel[arg->channel_num];
	callout = &c->callout;

	FUNC2(vatpit->vm, "atpit t%d fired", arg->channel_num);

	FUNC0(vatpit);

	if (FUNC5(callout))		/* callout was reset */
		goto done;

	if (!FUNC3(callout))		/* callout was stopped */
		goto done;

	FUNC4(callout);

	if (c->mode == TIMER_RATEGEN) {
		FUNC6(vatpit);
	}

	FUNC7(vatpit->vm, 0);
	FUNC8(vatpit->vm, 2);

done:
	FUNC1(vatpit);
	return;
}