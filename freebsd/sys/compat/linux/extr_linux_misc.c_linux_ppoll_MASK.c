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
struct timespec {scalar_t__ tv_sec; } ;
struct thread {scalar_t__* td_retval; } ;
struct linux_ppoll_args {int ssize; int /*<<< orphan*/ * tsp; int /*<<< orphan*/  nfds; int /*<<< orphan*/  fds; int /*<<< orphan*/ * sset; } ;
struct l_timespec {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  lts ;
typedef  int /*<<< orphan*/  l_ss ;
typedef  struct l_timespec l_sigset_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,struct l_timespec*,int) ; 
 int FUNC1 (struct l_timespec*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timespec*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct l_timespec*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct timespec*,struct l_timespec*) ; 
 int /*<<< orphan*/  FUNC5 (struct timespec*) ; 
 int FUNC6 (struct l_timespec*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC7 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC8 (struct timespec*,struct timespec*,struct timespec*) ; 

int
FUNC9(struct thread *td, struct linux_ppoll_args *args)
{
	struct timespec ts0, ts1;
	struct l_timespec lts;
	struct timespec uts, *tsp;
	l_sigset_t l_ss;
	sigset_t *ssp;
	sigset_t ss;
	int error;

	if (args->sset != NULL) {
		if (args->ssize != sizeof(l_ss))
			return (EINVAL);
		error = FUNC0(args->sset, &l_ss, sizeof(l_ss));
		if (error)
			return (error);
		FUNC3(&l_ss, &ss);
		ssp = &ss;
	} else
		ssp = NULL;
	if (args->tsp != NULL) {
		error = FUNC0(args->tsp, &lts, sizeof(lts));
		if (error)
			return (error);
		error = FUNC4(&uts, &lts);
		if (error != 0)
			return (error);

		FUNC5(&ts0);
		tsp = &uts;
	} else
		tsp = NULL;

	error = FUNC2(td, args->fds, args->nfds, tsp, ssp);

	if (error == 0 && args->tsp != NULL) {
		if (td->td_retval[0]) {
			FUNC5(&ts1);
			FUNC8(&ts1, &ts0, &ts1);
			FUNC8(&uts, &ts1, &uts);
			if (uts.tv_sec < 0)
				FUNC7(&uts);
		} else
			FUNC7(&uts);

		error = FUNC6(&lts, &uts);
		if (error == 0)
			error = FUNC1(&lts, args->tsp, sizeof(lts));
	}

	return (error);
}