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
struct sigaction {int /*<<< orphan*/  sa_mask; scalar_t__ sa_flags; int /*<<< orphan*/  sa_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGABRT ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void
FUNC8(void)
{
	struct sigaction act;

	/*
	 * POSIX requires we flush stdio buffers on abort.
	 * XXX ISO C requires that abort() be async-signal-safe.
	 */
	if (&__cleanup)
		FUNC0)();

	FUNC6(&act.sa_mask);
	/*
	 * Don't block SIGABRT to give any handler a chance; we ignore
	 * any errors -- ISO C doesn't allow abort to return anyway.
	 */
	FUNC5(&act.sa_mask, SIGABRT);
	(void)FUNC2(SIG_SETMASK, &act.sa_mask, NULL);
	(void)FUNC4(SIGABRT);

	/*
	 * If SIGABRT was ignored, or caught and the handler returns, do
	 * it again, only harder.
	 */
	act.sa_handler = SIG_DFL;
	act.sa_flags = 0;
	FUNC6(&act.sa_mask);
	(void)FUNC1(SIGABRT, &act, NULL);
	FUNC5(&act.sa_mask, SIGABRT);
	(void)FUNC2(SIG_SETMASK, &act.sa_mask, NULL);
	(void)FUNC4(SIGABRT);
	FUNC3(1);
}