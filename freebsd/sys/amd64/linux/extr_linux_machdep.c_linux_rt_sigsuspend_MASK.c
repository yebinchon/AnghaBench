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
struct linux_rt_sigsuspend_args {int sigsetsize; int /*<<< orphan*/  newset; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  l_sigset_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rt_sigsuspend ; 

int
FUNC4(struct thread *td, struct linux_rt_sigsuspend_args *uap)
{
	l_sigset_t lmask;
	sigset_t sigmask;
	int error;

	FUNC0(rt_sigsuspend, "%p, %ld",
	    uap->newset, uap->sigsetsize);

	if (uap->sigsetsize != sizeof(l_sigset_t))
		return (EINVAL);

	error = FUNC1(uap->newset, &lmask, sizeof(l_sigset_t));
	if (error)
		return (error);

	FUNC3(&lmask, &sigmask);
	return (FUNC2(td, sigmask));
}