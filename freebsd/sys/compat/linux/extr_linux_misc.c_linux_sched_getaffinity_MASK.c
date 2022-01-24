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
struct thread {int* td_retval; int /*<<< orphan*/  td_tid; int /*<<< orphan*/  td_proc; } ;
struct linux_sched_getaffinity_args {int len; scalar_t__ user_mask_ptr; int /*<<< orphan*/  pid; } ;
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_LEVEL_WHICH ; 
 int /*<<< orphan*/  CPU_WHICH_TID ; 
 int EINVAL ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct thread* FUNC2 (struct thread*,int /*<<< orphan*/ ,int) ; 

int
FUNC3(struct thread *td,
    struct linux_sched_getaffinity_args *args)
{
	int error;
	struct thread *tdt;

	if (args->len < sizeof(cpuset_t))
		return (EINVAL);

	tdt = FUNC2(td, args->pid, -1);
	if (tdt == NULL)
		return (ESRCH);

	FUNC0(tdt->td_proc);

	error = FUNC1(td, CPU_LEVEL_WHICH, CPU_WHICH_TID,
	    tdt->td_tid, sizeof(cpuset_t), (cpuset_t *)args->user_mask_ptr);
	if (error == 0)
		td->td_retval[0] = sizeof(cpuset_t);

	return (error);
}