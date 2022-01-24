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
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(const char *unused_cookie)
{
	char *default_path;
	char *custom_path;

	default_path = FUNC5(NULL);
	custom_path = FUNC5("custom-basename");

	if (FUNC6(NULL) == -1)
		FUNC2(EXIT_FAILURE, "Failed to create default pidfile");
	FUNC0(default_path);

	if (FUNC6("./second.pid") == -1)
		FUNC2(EXIT_FAILURE, "Failed to create pidfile 'second.pid'");
	FUNC1(default_path);
	FUNC0("./second.pid");

	if (FUNC6("custom-basename") == -1)
		FUNC2(EXIT_FAILURE, "Failed to create pidfile 'second.pid'");
	FUNC1(default_path);
	FUNC1("./second.pid");
	FUNC1("./custom-basename");
	FUNC0(custom_path);

	FUNC4(custom_path);
	FUNC4(default_path);
	FUNC3(EXIT_SUCCESS);
}