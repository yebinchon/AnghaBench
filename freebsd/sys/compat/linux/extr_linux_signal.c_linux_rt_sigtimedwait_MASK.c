#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int suseconds_t ;
struct timeval {long tv_sec; int tv_usec; } ;
struct timespec {int dummy; } ;
struct thread {int* td_retval; } ;
struct linux_rt_sigtimedwait_args {int sigsetsize; int /*<<< orphan*/  ptr; scalar_t__ timeout; scalar_t__ mask; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  ltv ;
typedef  int /*<<< orphan*/  lset ;
typedef  int /*<<< orphan*/  linfo ;
struct TYPE_8__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef  TYPE_1__ l_timeval ;
typedef  TYPE_1__ l_sigset_t ;
typedef  int /*<<< orphan*/  l_siginfo_t ;
struct TYPE_9__ {int /*<<< orphan*/  ksi_signo; } ;
typedef  TYPE_3__ ksiginfo_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*,struct timespec*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,TYPE_1__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct timeval*) ; 
 int FUNC5 (struct thread*,int /*<<< orphan*/ ,TYPE_3__*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct timeval*) ; 

int
FUNC10(struct thread *td,
	struct linux_rt_sigtimedwait_args *args)
{
	int error, sig;
	l_timeval ltv;
	struct timeval tv;
	struct timespec ts, *tsa;
	l_sigset_t lset;
	sigset_t bset;
	l_siginfo_t linfo;
	ksiginfo_t info;

	if (args->sigsetsize != sizeof(l_sigset_t))
		return (EINVAL);

	if ((error = FUNC2(args->mask, &lset, sizeof(lset))))
		return (error);
	FUNC7(&lset, &bset);

	tsa = NULL;
	if (args->timeout) {
		if ((error = FUNC2(args->timeout, &ltv, sizeof(ltv))))
			return (error);
		tv.tv_sec = (long)ltv.tv_sec;
		tv.tv_usec = (suseconds_t)ltv.tv_usec;
		if (FUNC4(&tv)) {
			/*
			 * The timeout was invalid. Convert it to something
			 * valid that will act as it does under Linux.
			 */
			tv.tv_sec += tv.tv_usec / 1000000;
			tv.tv_usec %= 1000000;
			if (tv.tv_usec < 0) {
				tv.tv_sec -= 1;
				tv.tv_usec += 1000000;
			}
			if (tv.tv_sec < 0)
				FUNC9(&tv);
		}
		FUNC0(&tv, &ts);
		tsa = &ts;
	}
	error = FUNC5(td, bset, &info, tsa);
	if (error)
		return (error);

	sig = FUNC1(info.ksi_signo);

	if (args->ptr) {
		FUNC8(&linfo, 0, sizeof(linfo));
		FUNC6(&info, &linfo, sig);
		error = FUNC3(&linfo, args->ptr, sizeof(linfo));
	}
	if (error == 0)
		td->td_retval[0] = sig;

	return (error);
}