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
struct thread {int dummy; } ;
struct linux_rt_sigprocmask_args {int sigsetsize; int /*<<< orphan*/ * omask; int /*<<< orphan*/ * mask; int /*<<< orphan*/  how; } ;
typedef  int /*<<< orphan*/  l_sigset_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3(struct thread *td, struct linux_rt_sigprocmask_args *args)
{
	l_sigset_t set, oset;
	int error;

	if (args->sigsetsize != sizeof(l_sigset_t))
		return (EINVAL);

	if (args->mask != NULL) {
		error = FUNC0(args->mask, &set, sizeof(l_sigset_t));
		if (error)
			return (error);
	}

	error = FUNC2(td, args->how,
				     args->mask ? &set : NULL,
				     args->omask ? &oset : NULL);

	if (args->omask != NULL && !error) {
		error = FUNC1(&oset, args->omask, sizeof(l_sigset_t));
	}

	return (error);
}