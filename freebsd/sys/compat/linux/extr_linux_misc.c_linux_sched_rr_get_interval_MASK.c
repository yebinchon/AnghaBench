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
struct timespec {int dummy; } ;
struct thread {int /*<<< orphan*/  td_proc; } ;
struct linux_sched_rr_get_interval_args {scalar_t__ pid; int /*<<< orphan*/  interval; } ;
struct l_timespec {int dummy; } ;
typedef  int /*<<< orphan*/  lts ;

/* Variables and functions */
 int EINVAL ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct l_timespec*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct thread*,struct thread*,struct timespec*) ; 
 struct thread* FUNC3 (struct thread*,scalar_t__,int) ; 
 int FUNC4 (struct l_timespec*,struct timespec*) ; 

int
FUNC5(struct thread *td,
    struct linux_sched_rr_get_interval_args *uap)
{
	struct timespec ts;
	struct l_timespec lts;
	struct thread *tdt;
	int error;

	/*
	 * According to man in case the invalid pid specified
	 * EINVAL should be returned.
	 */
	if (uap->pid < 0)
		return (EINVAL);

	tdt = FUNC3(td, uap->pid, -1);
	if (tdt == NULL)
		return (ESRCH);

	error = FUNC2(td, tdt, &ts);
	FUNC0(tdt->td_proc);
	if (error != 0)
		return (error);
	error = FUNC4(&lts, &ts);
	if (error != 0)
		return (error);
	return (FUNC1(&lts, uap->interval, sizeof(lts)));
}