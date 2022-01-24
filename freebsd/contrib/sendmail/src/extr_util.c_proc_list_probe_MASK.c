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
typedef  scalar_t__ pid_t ;
struct TYPE_4__ {int /*<<< orphan*/  e_id; } ;
struct TYPE_3__ {scalar_t__ proc_pid; scalar_t__ proc_type; scalar_t__ proc_count; int /*<<< orphan*/  proc_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,scalar_t__) ; 
 int CurChildren ; 
 TYPE_2__* CurEnv ; 
 int /*<<< orphan*/  CurRunners ; 
 scalar_t__ CurrentPid ; 
 scalar_t__ DaemonPid ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int LogLevel ; 
 int /*<<< orphan*/  NOQID ; 
 scalar_t__ NO_PID ; 
 scalar_t__ PROC_QUEUE ; 
 int ProcListSize ; 
 TYPE_1__* ProcListVec ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 

void
FUNC6()
{
	int i, children;
	int chldwasblocked;
	pid_t pid;

	children = 0;
	chldwasblocked = FUNC3(SIGCHLD);

	/* start from 1 since 0 is the daemon itself */
	for (i = 1; i < ProcListSize; i++)
	{
		pid = ProcListVec[i].proc_pid;
		if (pid == NO_PID || pid == CurrentPid)
			continue;
		if (FUNC2(pid, 0) < 0)
		{
			if (LogLevel > 3)
				FUNC5(LOG_DEBUG, CurEnv->e_id,
					  "proc_list_probe: lost pid %d",
					  (int) ProcListVec[i].proc_pid);
			ProcListVec[i].proc_pid = NO_PID;
			FUNC1(ProcListVec[i].proc_task);

			if (ProcListVec[i].proc_type == PROC_QUEUE)
			{
				CurRunners -= ProcListVec[i].proc_count;
				FUNC0("proc_list_probe", i,
						ProcListVec[i].proc_count);
			}

			CurChildren--;
		}
		else
		{
			++children;
		}
	}
	if (CurChildren < 0)
		CurChildren = 0;
	if (chldwasblocked == 0)
		(void) FUNC4(SIGCHLD);
	if (LogLevel > 10 && children != CurChildren && CurrentPid == DaemonPid)
	{
		FUNC5(LOG_ERR, NOQID,
			  "proc_list_probe: found %d children, expected %d",
			  children, CurChildren);
	}
}