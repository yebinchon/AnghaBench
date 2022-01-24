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
struct TYPE_2__ {scalar_t__ wg_restart; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int LogLevel ; 
 int /*<<< orphan*/  NOQID ; 
 scalar_t__ NoMoreRunners ; 
 int NumWorkGroups ; 
 int RestartWorkGroup ; 
 int /*<<< orphan*/  SIGCHLD ; 
 TYPE_1__* WorkGrp ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,scalar_t__) ; 

void
FUNC4()
{
	int i;
	int wasblocked;

	if (NoMoreRunners)
		return;

	/* Block SIGCHLD so reapchild() doesn't mess with us */
	wasblocked = FUNC1(SIGCHLD);

	for (i = 0; i < NumWorkGroups; i++)
	{
		if (WorkGrp[i].wg_restart >= 0)
		{
			if (LogLevel > 8)
				FUNC3(LOG_ERR, NOQID,
					  "restart queue runner=%d due to signal 0x%x",
					  i, WorkGrp[i].wg_restart);
			FUNC0(i);
		}
	}
	RestartWorkGroup = false;

	if (wasblocked == 0)
		(void) FUNC2(SIGCHLD);
}