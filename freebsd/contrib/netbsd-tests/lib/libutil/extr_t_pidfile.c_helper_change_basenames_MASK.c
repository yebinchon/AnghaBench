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
	if (FUNC6(NULL) == -1)
		FUNC2(EXIT_FAILURE, "Failed to create pidfile with default "
		    "basename");
	FUNC0(default_path);
	if (FUNC6(NULL) == -1)
		FUNC2(EXIT_FAILURE, "Failed to recreate pidfile with default "
		    "basename");
	FUNC0(default_path);

	custom_path = FUNC5("custom-basename");
	if (FUNC6("custom-basename") == -1)
		FUNC2(EXIT_FAILURE, "Failed to create pidfile with custom "
		    "basename");
	FUNC1(default_path);
	FUNC0(custom_path);
	if (FUNC6("custom-basename") == -1)
		FUNC2(EXIT_FAILURE, "Failed to recreate pidfile with custom "
		    "basename");
	FUNC0(custom_path);

	FUNC4(custom_path);
	FUNC4(default_path);
	FUNC3(EXIT_SUCCESS);
}