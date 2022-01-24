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
struct sigaction {int /*<<< orphan*/  sa_handler; scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGCONT ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  mark_exit_flag ; 
 int /*<<< orphan*/  mark_hup_flag ; 
 int /*<<< orphan*/  mark_usr1_flag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  saved_sigset ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3()
{
	struct sigaction act;

	FUNC2(&act.sa_mask);
	act.sa_handler = mark_exit_flag;
	act.sa_flags = 0;
	FUNC1(SIGINT, &act, NULL);
	FUNC1(SIGTERM, &act, NULL);
	act.sa_handler = mark_hup_flag;
	FUNC1(SIGHUP, &act, NULL);
	FUNC1(SIGCONT, &act, NULL);
#ifndef HAVE_OLD_LINUX_THREADS
	act.sa_handler = mark_usr1_flag;
	FUNC1(SIGUSR1, &act, NULL);
#endif
	FUNC0(SIG_SETMASK, &saved_sigset, NULL);
}