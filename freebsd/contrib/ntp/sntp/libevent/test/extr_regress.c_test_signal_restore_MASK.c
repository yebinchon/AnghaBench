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
struct sigaction {int sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
struct event_base {int dummy; } ;
struct event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGUSR1 ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct event_base*) ; 
 struct event_base* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct event*) ; 
 int /*<<< orphan*/  FUNC5 (struct event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct event*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signal_cb ; 
 int /*<<< orphan*/  signal_cb_sa ; 
 int test_ok ; 

__attribute__((used)) static void
FUNC10(void)
{
	struct event ev;
	struct event_base *base = FUNC2();
#ifdef EVENT__HAVE_SIGACTION
	struct sigaction sa;
#endif

	test_ok = 0;
#ifdef EVENT__HAVE_SIGACTION
	sa.sa_handler = signal_cb_sa;
	sa.sa_flags = 0x0;
	sigemptyset(&sa.sa_mask);
	if (sigaction(SIGUSR1, &sa, NULL) == -1)
		goto out;
#else
	if (FUNC9(SIGUSR1, signal_cb_sa) == SIG_ERR)
		goto out;
#endif
	FUNC5(&ev, SIGUSR1, signal_cb, &ev);
	FUNC3(&ev, NULL);
	FUNC4(&ev);

	FUNC6(SIGUSR1);
	/* 1 == signal_cb, 2 == signal_cb_sa, we want our previous handler */
	if (test_ok != 2)
		test_ok = 0;
out:
	FUNC1(base);
	FUNC0();
	return;
}