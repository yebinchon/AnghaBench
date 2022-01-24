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
struct sigaction {scalar_t__ sa_handler; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/ * sa_sigaction; int /*<<< orphan*/  sa_flags; } ;
struct usigaction {struct sigaction sigact; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  __siginfohandler_t ;

/* Variables and functions */
 int /*<<< orphan*/  SA_NODEFER ; 
 int /*<<< orphan*/  SA_SIGINFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int SIGCANCEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SIG_DFL ; 
 scalar_t__ SIG_IGN ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  SIG_UNBLOCK ; 
 int _SIG_MAXSIG ; 
 struct usigaction* FUNC3 (int) ; 
 int FUNC4 (int,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _thr_maskset ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigcancel_handler ; 
 int /*<<< orphan*/ * thr_sighandler ; 

void
FUNC7(int dlopened)
{
	struct sigaction act, nact, oact;
	struct usigaction *usa;
	sigset_t oldset;
	int sig, error;

	if (dlopened) {
		FUNC5(SIG_SETMASK, &_thr_maskset, &oldset);
		for (sig = 1; sig <= _SIG_MAXSIG; sig++) {
			if (sig == SIGCANCEL)
				continue;
			error = FUNC4(sig, NULL, &oact);
			if (error == -1 || oact.sa_handler == SIG_DFL ||
			    oact.sa_handler == SIG_IGN)
				continue;
			usa = FUNC3(sig);
			usa->sigact = oact;
			nact = oact;
			FUNC6(&usa->sigact.sa_mask);
			nact.sa_flags &= ~SA_NODEFER;
			nact.sa_flags |= SA_SIGINFO;
			nact.sa_sigaction = thr_sighandler;
			nact.sa_mask = _thr_maskset;
			(void)FUNC4(sig, &nact, NULL);
		}
		FUNC5(SIG_SETMASK, &oldset, NULL);
	}

	/* Install SIGCANCEL handler. */
	FUNC2(act.sa_mask);
	act.sa_flags = SA_SIGINFO;
	act.sa_sigaction = (__siginfohandler_t *)&sigcancel_handler;
	FUNC4(SIGCANCEL, &act, NULL);

	/* Unblock SIGCANCEL */
	FUNC1(act.sa_mask);
	FUNC0(act.sa_mask, SIGCANCEL);
	FUNC5(SIG_UNBLOCK, &act.sa_mask, NULL);
}