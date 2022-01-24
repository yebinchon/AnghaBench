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
struct TYPE_2__ {int /*<<< orphan*/  callout; } ;
struct delayed_work {int /*<<< orphan*/  work; TYPE_1__ timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

void
FUNC2(void *context, int pending)
{
	struct delayed_work *dwork = context;

	/*
	 * Make sure the timer belonging to the delayed work gets
	 * drained before invoking the work function. Else the timer
	 * mutex may still be in use which can lead to use-after-free
	 * situations, because the work function might free the work
	 * structure before returning.
	 */
	FUNC0(&dwork->timer.callout);

	FUNC1(&dwork->work, pending);
}