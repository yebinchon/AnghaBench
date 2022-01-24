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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  errbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(
	const char *file,
	int line,
	const char *format,
	va_list args
	)
{
	char errbuf[256];

	FUNC2(NULL);  /* Avoid recursion */

	FUNC3(LOG_ERR, "%s:%d: fatal error:", file, line);
	FUNC4(errbuf, sizeof(errbuf), format, args);
	FUNC3(LOG_ERR, "%s", errbuf);
	FUNC3(LOG_ERR, "exiting (due to fatal error in library)");

#if defined(DEBUG) && defined(SYS_WINNT)
	if (debug)
		DebugBreak();
#endif

	FUNC1();
}