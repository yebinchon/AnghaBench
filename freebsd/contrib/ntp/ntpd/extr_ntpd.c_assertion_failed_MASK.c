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
typedef  int /*<<< orphan*/  isc_assertiontype_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void
FUNC5(
	const char *file,
	int line,
	isc_assertiontype_t type,
	const char *cond
	)
{
	FUNC2(NULL);    /* Avoid recursion */

	FUNC4(LOG_ERR, "%s:%d: %s(%s) failed",
		file, line, FUNC3(type), cond);
	FUNC4(LOG_ERR, "exiting (due to assertion failure)");

#if defined(DEBUG) && defined(SYS_WINNT)
	if (debug)
		DebugBreak();
#endif

	FUNC1();
}