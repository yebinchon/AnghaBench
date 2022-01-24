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
struct work_struct {int /*<<< orphan*/  work_task; TYPE_1__* work_queue; int /*<<< orphan*/  state; } ;
struct taskqueue {int dummy; } ;
struct TYPE_2__ {struct taskqueue* taskqueue; } ;

/* Variables and functions */
 int WARN_GIANTOK ; 
 int WARN_SLEEPOK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,char*) ; 
#define  WORK_ST_IDLE 128 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct taskqueue*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct taskqueue*,int /*<<< orphan*/ *) ; 

bool
FUNC4(struct work_struct *work)
{
	struct taskqueue *tq;
	bool retval;

	FUNC0(WARN_GIANTOK | WARN_SLEEPOK, NULL,
	    "linux_flush_work() might sleep");

	switch (FUNC1(&work->state)) {
	case WORK_ST_IDLE:
		return (false);
	default:
		tq = work->work_queue->taskqueue;
		retval = FUNC3(tq, &work->work_task);
		FUNC2(tq, &work->work_task);
		return (retval);
	}
}