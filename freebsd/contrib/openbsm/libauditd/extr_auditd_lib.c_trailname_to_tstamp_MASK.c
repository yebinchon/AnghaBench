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
typedef  int /*<<< orphan*/  ts ;
typedef  int /*<<< orphan*/  tm ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; scalar_t__ tm_year; } ;

/* Variables and functions */
 scalar_t__ POSTFIX_LEN ; 
 int /*<<< orphan*/  TIMESTAMP_LEN ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tm*,int) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct tm*) ; 

__attribute__((used)) static int
FUNC6(char *fn, time_t *tstamp)
{
	struct tm tm;
	char ts[TIMESTAMP_LEN + 1];
	char *p;

	*tstamp = 0;

	/*
	 * Get the ending time stamp.
	 */
	if ((p = FUNC2(fn, '.')) == NULL)
		return (1);
	FUNC3(ts, ++p, sizeof(ts));
	if (FUNC4(ts) != POSTFIX_LEN)
		return (1);

	FUNC1(&tm, sizeof(tm));

	/* seconds (0-60) */
	p = ts + POSTFIX_LEN - 2;
	tm.tm_sec = FUNC0(p);
	if (tm.tm_sec < 0 || tm.tm_sec > 60)
		return (1);

	/* minutes (0-59) */
	*p = '\0'; p -= 2;
	tm.tm_min = FUNC0(p);
	if (tm.tm_min < 0 || tm.tm_min > 59)
		return (1);

	/* hours (0 - 23) */
	*p = '\0'; p -= 2;
	tm.tm_hour = FUNC0(p);
	if (tm.tm_hour < 0 || tm.tm_hour > 23)
		return (1);

	/* day of month (1-31) */
	*p = '\0'; p -= 2;
	tm.tm_mday = FUNC0(p);
	if (tm.tm_mday < 1 || tm.tm_mday > 31)
		return (1);

	/* month (0 - 11) */
	*p = '\0'; p -= 2;
	tm.tm_mon = FUNC0(p) - 1;
	if (tm.tm_mon < 0 || tm.tm_mon > 11)
		return (1);

	/* year (year - 1900) */
	*p = '\0'; p -= 4;
	tm.tm_year = FUNC0(p) - 1900;
	if (tm.tm_year < 0)
		return (1);

	*tstamp = FUNC5(&tm);

	return (0);
}