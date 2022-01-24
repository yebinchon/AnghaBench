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
struct thread {int /*<<< orphan*/  td_sigmask; int /*<<< orphan*/  td_siglist; struct proc* td_proc; } ;
struct proc {int /*<<< orphan*/  p_siglist; } ;
struct linux_rt_sigpending_args {int sigsetsize; int /*<<< orphan*/  set; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  lset ;
typedef  int /*<<< orphan*/  l_sigset_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int
FUNC6(struct thread *td, struct linux_rt_sigpending_args *args)
{
	struct proc *p = td->td_proc;
	sigset_t bset;
	l_sigset_t lset;

	if (args->sigsetsize > sizeof(lset))
		return (EINVAL);
		/* NOT REACHED */

	FUNC0(p);
	bset = p->p_siglist;
	FUNC3(bset, td->td_siglist);
	FUNC2(bset, td->td_sigmask);
	FUNC1(p);
	FUNC4(&bset, &lset);
	return (FUNC5(&lset, args->set, args->sigsetsize));
}