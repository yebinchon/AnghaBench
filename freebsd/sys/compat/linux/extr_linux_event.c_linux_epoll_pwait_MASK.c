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
struct linux_epoll_pwait_args {int sigsetsize; int /*<<< orphan*/  timeout; int /*<<< orphan*/  maxevents; int /*<<< orphan*/  events; int /*<<< orphan*/  epfd; int /*<<< orphan*/ * mask; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  l_sigset_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3(struct thread *td, struct linux_epoll_pwait_args *args)
{
	sigset_t mask, *pmask;
	l_sigset_t lmask;
	int error;

	if (args->mask != NULL) {
		if (args->sigsetsize != sizeof(l_sigset_t))
			return (EINVAL);
		error = FUNC0(args->mask, &lmask, sizeof(l_sigset_t));
		if (error != 0)
			return (error);
		FUNC2(&lmask, &mask);
		pmask = &mask;
	} else
		pmask = NULL;
	return (FUNC1(td, args->epfd, args->events,
	    args->maxevents, args->timeout, pmask));
}