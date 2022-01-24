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
struct linux_sched_getparam_args {int /*<<< orphan*/  param; int /*<<< orphan*/  pid; } ;
typedef  int /*<<< orphan*/  sched_param ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sched_param*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct thread*,struct thread*,struct sched_param*) ; 
 struct thread* FUNC3 (struct thread*,int /*<<< orphan*/ ,int) ; 

int
FUNC4(struct thread *td,
    struct linux_sched_getparam_args *uap)
{
	struct sched_param sched_param;
	struct thread *tdt;
	int error;

	tdt = FUNC3(td, uap->pid, -1);
	if (tdt == NULL)
		return (ESRCH);

	error = FUNC2(td, tdt, &sched_param);
	FUNC0(tdt->td_proc);
	if (error == 0)
		error = FUNC1(&sched_param, uap->param,
		    sizeof(sched_param));
	return (error);
}