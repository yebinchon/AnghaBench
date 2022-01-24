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
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ MAX_UNEXPECTED_ERRORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ unexpected_error_cnt ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(
	const char *file,
	int line,
	const char *format,
	va_list args
	)
{
	char errbuf[256];

	if (unexpected_error_cnt >= MAX_UNEXPECTED_ERRORS)
		return;	/* avoid clutter in log */

	FUNC0(LOG_ERR, "%s:%d: unexpected error:", file, line);
	FUNC1(errbuf, sizeof(errbuf), format, args);
	FUNC0(LOG_ERR, "%s", errbuf);

	if (++unexpected_error_cnt == MAX_UNEXPECTED_ERRORS)
		FUNC0(LOG_ERR, "Too many errors.  Shutting up.");

}