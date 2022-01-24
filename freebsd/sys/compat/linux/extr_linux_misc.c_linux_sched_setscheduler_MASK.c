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
struct thread {int /*<<< orphan*/  td_proc; } ;
struct sched_param {int dummy; } ;
struct linux_sched_setscheduler_args {int policy; int /*<<< orphan*/  pid; int /*<<< orphan*/  param; } ;
typedef  int /*<<< orphan*/  sched_param ;

/* Variables and functions */
 int EINVAL ; 
 int ESRCH ; 
#define  LINUX_SCHED_FIFO 130 
#define  LINUX_SCHED_OTHER 129 
#define  LINUX_SCHED_RR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SCHED_FIFO ; 
 int SCHED_OTHER ; 
 int SCHED_RR ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sched_param*,int) ; 
 int FUNC2 (struct thread*,struct thread*,int,struct sched_param*) ; 
 struct thread* FUNC3 (struct thread*,int /*<<< orphan*/ ,int) ; 

int
FUNC4(struct thread *td,
    struct linux_sched_setscheduler_args *args)
{
	struct sched_param sched_param;
	struct thread *tdt;
	int error, policy;

	switch (args->policy) {
	case LINUX_SCHED_OTHER:
		policy = SCHED_OTHER;
		break;
	case LINUX_SCHED_FIFO:
		policy = SCHED_FIFO;
		break;
	case LINUX_SCHED_RR:
		policy = SCHED_RR;
		break;
	default:
		return (EINVAL);
	}

	error = FUNC1(args->param, &sched_param, sizeof(sched_param));
	if (error)
		return (error);

	tdt = FUNC3(td, args->pid, -1);
	if (tdt == NULL)
		return (ESRCH);

	error = FUNC2(td, tdt, policy, &sched_param);
	FUNC0(tdt->td_proc);
	return (error);
}