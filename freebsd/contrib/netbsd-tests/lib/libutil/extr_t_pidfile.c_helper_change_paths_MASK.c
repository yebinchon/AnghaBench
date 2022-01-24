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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(const char *unused_cookie)
{

	if (FUNC4("./var/run/first.pid") == -1)
		FUNC2(EXIT_FAILURE, "Failed to create pidfile "
		    "'./var/run/first.pid'");
	FUNC0("./var/run/first.pid");

	if (FUNC4("./second.pid") == -1)
		FUNC2(EXIT_FAILURE, "Failed to create pidfile 'second.pid'");
	FUNC1("./var/run/first.pid");
	FUNC0("./second.pid");

	FUNC3(EXIT_SUCCESS);
}