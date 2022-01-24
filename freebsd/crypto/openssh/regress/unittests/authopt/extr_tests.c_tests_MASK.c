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
typedef  int /*<<< orphan*/  LogLevel ;

/* Variables and functions */
 int /*<<< orphan*/  SYSLOG_FACILITY_USER ; 
 int /*<<< orphan*/  SYSLOG_LEVEL_DEBUG3 ; 
 int /*<<< orphan*/  SYSLOG_LEVEL_QUIET ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5(void)
{
	extern char *__progname;
	LogLevel ll = FUNC3() ?
	    SYSLOG_LEVEL_DEBUG3 : SYSLOG_LEVEL_QUIET;

	/* test_cert_parse() are a bit spammy to error() by default... */
	FUNC0(__progname, ll, SYSLOG_FACILITY_USER, 1);

	FUNC1();
	FUNC2();
	FUNC4();
}