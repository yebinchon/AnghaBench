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
 int ENOENT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int errno ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC6(const char *tty, int flags)
{
	int failopenlogged = 0, i, saved_errno;

	while ((i = FUNC3(tty, flags)) == -1)
	{
		saved_errno = errno;
		if (!failopenlogged) {
			FUNC5(LOG_ERR, "open %s: %m", tty);
			failopenlogged = 1;
		}
		if (saved_errno == ENOENT)
			return 0;
		FUNC4(60);
	}
	if (FUNC2(i) < 0) { 
		if (FUNC1(0,0) < 0) {
			FUNC5(LOG_ERR,"daemon: %m");
			FUNC0(i);
			return 0;
		}
		if (FUNC2(i) < 0) {
			FUNC5(LOG_ERR, "login_tty %s: %m", tty);
			FUNC0(i);
			return 0;
		}
	}
	return 1;
}