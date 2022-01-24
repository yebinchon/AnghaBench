#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  uc_sigmask; } ;
typedef  TYPE_1__ ucontext_t ;
struct sigaction {int dummy; } ;
struct usigaction {int /*<<< orphan*/  lock; struct sigaction sigact; } ;
struct pthread {int /*<<< orphan*/  deferred_sigmask; int /*<<< orphan*/  deferred_siginfo; int /*<<< orphan*/  deferred_sigact; scalar_t__ deferred_run; } ;
typedef  struct sigaction siginfo_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct pthread*) ; 
 struct usigaction* FUNC2 (int) ; 
 struct pthread* FUNC3 () ; 
 int /*<<< orphan*/  _thr_deferset ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC6 (struct sigaction*,int,struct sigaction*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sigaction*,int) ; 

__attribute__((used)) static void
FUNC8(int sig, siginfo_t *info, void *_ucp)
{
	struct pthread *curthread;
	ucontext_t *ucp;
	struct sigaction act;
	struct usigaction *usa;
	int err;

	err = errno;
	curthread = FUNC3();
	ucp = _ucp;
	usa = FUNC2(sig);
	FUNC4(&usa->lock);
	act = usa->sigact;
	FUNC5(&usa->lock);
	errno = err;
	curthread->deferred_run = 0;

	/*
	 * if a thread is in critical region, for example it holds low level locks,
	 * try to defer the signal processing, however if the signal is synchronous
	 * signal, it means a bad thing has happened, this is a programming error,
	 * resuming fault point can not help anything (normally causes deadloop),
	 * so here we let user code handle it immediately.
	 */
	if (FUNC1(curthread) && FUNC0(_thr_deferset, sig)) {
		FUNC7(&curthread->deferred_sigact, &act, sizeof(struct sigaction));
		FUNC7(&curthread->deferred_siginfo, info, sizeof(siginfo_t));
		curthread->deferred_sigmask = ucp->uc_sigmask;
		/* mask all signals, we will restore it later. */
		ucp->uc_sigmask = _thr_deferset;
		return;
	}

	FUNC6(&act, sig, info, ucp);
}