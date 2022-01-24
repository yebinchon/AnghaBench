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
 int /*<<< orphan*/  AUDITD_PIDFILE ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ errno ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(void)
{

	FUNC0();
	if (FUNC4(AUDITD_PIDFILE) == -1 && errno != ENOENT) {
		FUNC2("Couldn't remove %s: %m", AUDITD_PIDFILE);
		return (1);
	}
	FUNC3();

	if (FUNC1() != 0) {
		FUNC2("Error closing trigger messaging mechanism");
		return (1);
	}
	return (0);
}