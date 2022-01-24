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
struct sigaction {void (* sa_handler ) (int) ;scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; } ;

/* Variables and functions */
 int FUNC0 (int,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(int signo, struct sigaction *oactp, void (*handler)(int))
{
	struct sigaction act;

	/*
	 * Use sigaction(2), not signal(3), since we don't always want to
	 * restart system calls.  The example is when waiting for a command
	 * mode keystroke and SIGWINCH arrives.  Besides, you can't portably
	 * restart system calls (thanks, POSIX!).
	 */
	act.sa_handler = handler;
	FUNC1(&act.sa_mask);

	act.sa_flags = 0;
	return (FUNC0(signo, &act, oactp));
}