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

/* Variables and functions */
 int NSIG ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC1 (char const*) ; 
 char** sys_siglist ; 

void
FUNC2(int sig, const char *s)
{
	const char *c;

	if (sig >= 0 && sig < NSIG)
		c = sys_siglist[sig];
	else
		c = "Unknown signal";
	if (s != NULL && *s != '\0') {
		(void)FUNC0(STDERR_FILENO, s, FUNC1(s));
		(void)FUNC0(STDERR_FILENO, ": ", 2);
	}
	(void)FUNC0(STDERR_FILENO, c, FUNC1(c));
	(void)FUNC0(STDERR_FILENO, "\n", 1);
}