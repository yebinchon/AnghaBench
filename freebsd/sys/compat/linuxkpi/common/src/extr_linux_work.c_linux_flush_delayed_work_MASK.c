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
struct taskqueue {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  work_task; TYPE_1__* work_queue; int /*<<< orphan*/  state; } ;
struct delayed_work {TYPE_2__ work; } ;
struct TYPE_3__ {struct taskqueue* taskqueue; } ;

/* Variables and functions */
 int WARN_GIANTOK ; 
 int WARN_SLEEPOK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,char*) ; 
#define  WORK_ST_IDLE 129 
#define  WORK_ST_TIMER 128 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct delayed_work*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct delayed_work*) ; 
 int /*<<< orphan*/  FUNC4 (struct taskqueue*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct taskqueue*,int /*<<< orphan*/ *) ; 

bool
FUNC6(struct delayed_work *dwork)
{
	struct taskqueue *tq;
	bool retval;

	FUNC0(WARN_GIANTOK | WARN_SLEEPOK, NULL,
	    "linux_flush_delayed_work() might sleep");

	switch (FUNC1(&dwork->work.state)) {
	case WORK_ST_IDLE:
		return (false);
	case WORK_ST_TIMER:
		if (FUNC2(dwork, 1))
			FUNC3(dwork);
		/* FALLTHROUGH */
	default:
		tq = dwork->work.work_queue->taskqueue;
		retval = FUNC5(tq, &dwork->work.work_task);
		FUNC4(tq, &dwork->work.work_task);
		return (retval);
	}
}