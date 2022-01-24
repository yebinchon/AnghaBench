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
typedef  int /*<<< orphan*/  tm ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_year; void* tm_mon; void* tm_sec; void* tm_min; void* tm_hour; void* tm_mday; } ;

/* Variables and functions */
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct tm*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (char const*,char const**,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tm*) ; 

__attribute__((used)) static time_t
FUNC4(const char *s, char **endptr)
{
/** like strptime() but strictly for ISO 8601 Zulu strings */
	struct tm tm;
	time_t res = (time_t)-1;

	/* make sure tm is clean */
	FUNC1(&tm, 0, sizeof(tm));

	/* as a courtesy to our callers, and since this is a non-standard
	 * routine, we skip leading whitespace */
	while (*s == ' ' || *s == '\t')
		++s;

	/* read year */
	if ((tm.tm_year = FUNC2(s, &s, 1583, 4095)) < 0 || *s++ != '-') {
		goto out;
	}
	/* read month */
	if ((tm.tm_mon = FUNC2(s, &s, 1, 12)) < 0 || *s++ != '-') {
		goto out;
	}
	/* read day-of-month */
	if ((tm.tm_mday = FUNC2(s, &s, 1, 31)) < 0 || *s++ != 'T') {
		goto out;
	}
	/* read hour */
	if ((tm.tm_hour = FUNC2(s, &s, 0, 23)) < 0 || *s++ != ':') {
		goto out;
	}
	/* read minute */
	if ((tm.tm_min = FUNC2(s, &s, 0, 59)) < 0 || *s++ != ':') {
		goto out;
	}
	/* read second */
	if ((tm.tm_sec = FUNC2(s, &s, 0, 60)) < 0 || *s++ != 'Z') {
		goto out;
	}

	/* massage TM to fulfill some of POSIX' constraints */
	tm.tm_year -= 1900;
	tm.tm_mon--;

	/* now convert our custom tm struct to a unix stamp using UTC */
	res = FUNC3(&tm);

out:
	if (endptr != NULL) {
		*endptr = FUNC0(s);
	}
	return res;
}