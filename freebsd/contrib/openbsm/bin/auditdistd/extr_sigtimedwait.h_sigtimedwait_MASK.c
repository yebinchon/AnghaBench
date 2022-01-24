#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;
struct TYPE_2__ {scalar_t__ tv_sec; int tv_usec; } ;
struct itimerval {TYPE_1__ it_value; TYPE_1__ it_interval; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  siginfo_t ;
typedef  int /*<<< orphan*/  mask ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  ITIMER_REAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int SIGALRM ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_UNBLOCK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int errno ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct itimerval*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC9(const sigset_t *set, siginfo_t *info,
    const struct timespec *timeout)
{
	struct itimerval it;
	sigset_t mask;
	int error, signo;

	FUNC0(info == NULL);

	FUNC1(FUNC5(&mask) == 0);
	FUNC1(FUNC4(&mask, SIGALRM) == 0);
	FUNC1(FUNC6(SIG_BLOCK, &mask, NULL) == 0);

	FUNC8(&it.it_interval);
	it.it_value.tv_sec = timeout->tv_sec;
	it.it_value.tv_usec = timeout->tv_nsec / 1000;
	if (it.it_value.tv_sec == 0 && it.it_value.tv_usec == 0)
		it.it_value.tv_usec = 1;
	FUNC1(FUNC3(ITIMER_REAL, &it, NULL) == 0);

	FUNC2(set, &mask, sizeof(mask));
	FUNC1(FUNC4(&mask, SIGALRM) == 0);

	FUNC1(FUNC7(&mask, &signo) == 0);
	error = errno;

	FUNC8(&it.it_interval);
	FUNC8(&it.it_value);
	FUNC1(FUNC3(ITIMER_REAL, &it, NULL) == 0);

	FUNC1(FUNC5(&mask) == 0);
	FUNC1(FUNC4(&mask, SIGALRM) == 0);
	FUNC1(FUNC6(SIG_UNBLOCK, &mask, NULL) == 0);

	if (signo == SIGALRM) {
		errno = EAGAIN;
		signo = -1;
	} else {
		errno = error;
	}

	return (signo);
}