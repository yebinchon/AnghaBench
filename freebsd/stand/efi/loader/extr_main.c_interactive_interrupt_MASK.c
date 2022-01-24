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
typedef  int time_t ;

/* Variables and functions */
 int fail_timeout ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static bool
FUNC3(const char *msg)
{
	time_t now, then, last;

	last = 0;
	now = then = FUNC0();
	FUNC2("%s\n", msg);
	if (fail_timeout == -2)		/* Always break to OK */
		return (true);
	if (fail_timeout == -1)		/* Never break to OK */
		return (false);
	do {
		if (last != now) {
			FUNC2("press any key to interrupt reboot in %d seconds\r",
			    fail_timeout - (int)(now - then));
			last = now;
		}

		/* XXX no pause or timeout wait for char */
		if (FUNC1())
			return (true);
		now = FUNC0();
	} while (now - then < fail_timeout);
	return (false);
}