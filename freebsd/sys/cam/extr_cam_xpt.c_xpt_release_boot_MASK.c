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
struct xpt_task {int /*<<< orphan*/  task; } ;
struct TYPE_2__ {scalar_t__ buses_to_config; int buses_config_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_CAMXPT ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xpt_task*) ; 
 struct xpt_task* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 
 int /*<<< orphan*/  xpt_finishconfig_task ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ xsoftc ; 

void
FUNC5(void)
{
	FUNC3();
	xsoftc.buses_to_config--;
	if (xsoftc.buses_to_config == 0 && xsoftc.buses_config_done == 0) {
		struct	xpt_task *task;

		xsoftc.buses_config_done = 1;
		FUNC4();
		/* Call manually because we don't have any buses */
		task = FUNC1(sizeof(struct xpt_task), M_CAMXPT, M_NOWAIT);
		if (task != NULL) {
			FUNC0(&task->task, 0, xpt_finishconfig_task, task);
			FUNC2(taskqueue_thread, &task->task);
		}
	} else
		FUNC4();
}