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
struct sigaction {int /*<<< orphan*/  sa_mask; void* sa_handler; scalar_t__ sa_flags; void* sa_sigaction; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 scalar_t__ SA_SIGINFO ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* alarm_handler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *
FUNC5(void *dummy)
{
	struct sigaction sa;
	sigset_t ss;
#ifdef SA_SIGINFO
	sa.sa_flags = SA_SIGINFO;
	sa.sa_sigaction = alarm_handler;
#else
	sa.sa_flags = 0;
	sa.sa_handler = alarm_handler;
#endif
	FUNC3(&ss);
	FUNC4(SIG_SETMASK, &ss, NULL);
	FUNC2(&sa.sa_mask);
	FUNC1(SIGALRM, &sa, NULL);
	FUNC0(1);

	return NULL;
}