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
struct sigaction {scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_ERROR ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int exit_signal ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int const,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

extern void
FUNC4(void)
{
	const int sig = exit_signal;

	if (sig != 0) {
#if defined(TUKLIB_DOSLIKE) || defined(__VMS)
		// Don't raise(), set only exit status. This avoids
		// printing unwanted message about SIGINT when the user
		// presses C-c.
		set_exit_status(E_ERROR);
#else
		struct sigaction sa;
		sa.sa_handler = SIG_DFL;
		FUNC3(&sa.sa_mask);
		sa.sa_flags = 0;
		FUNC2(sig, &sa, NULL);
		FUNC0(exit_signal);
#endif
	}

	return;
}