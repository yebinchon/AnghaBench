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
struct msqid_ds {int dummy; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IPC_RMID ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  mqid ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct msqid_ds*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5(void)
{
	FUNC1();

	if (FUNC2(mqid, IPC_RMID, (struct msqid_ds *)0) == -1) {
		if (errno != EINVAL) {
			FUNC3(LOG_ERR, "remove message queue: %m");
			FUNC4("adjtimed: remove message queue");
		}
	}

	FUNC0(2);
}