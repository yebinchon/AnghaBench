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
typedef  int time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; scalar_t__ tm_yday; scalar_t__ tm_isdst; void* tm_wday; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int COLON ; 
 int NUMBER ; 
 int SEMI ; 
 int SLASH ; 
 void* FUNC0 (char*) ; 
 int FUNC1 (char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

time_t
FUNC4(FILE *cfile)
{
	static int months[11] = { 31, 59, 90, 120, 151, 181,
	    212, 243, 273, 304, 334 };
	int guess, token;
	struct tm tm;
	char *val;

	/* Day of week... */
	token = FUNC1(&val, cfile);
	if (token != NUMBER) {
		FUNC2("numeric day of week expected.");
		if (token != SEMI)
			FUNC3(cfile);
		return (0);
	}
	tm.tm_wday = FUNC0(val);

	/* Year... */
	token = FUNC1(&val, cfile);
	if (token != NUMBER) {
		FUNC2("numeric year expected.");
		if (token != SEMI)
			FUNC3(cfile);
		return (0);
	}
	tm.tm_year = FUNC0(val);
	if (tm.tm_year > 1900)
		tm.tm_year -= 1900;

	/* Slash separating year from month... */
	token = FUNC1(&val, cfile);
	if (token != SLASH) {
		FUNC2("expected slash separating year from month.");
		if (token != SEMI)
			FUNC3(cfile);
		return (0);
	}

	/* Month... */
	token = FUNC1(&val, cfile);
	if (token != NUMBER) {
		FUNC2("numeric month expected.");
		if (token != SEMI)
			FUNC3(cfile);
		return (0);
	}
	tm.tm_mon = FUNC0(val) - 1;

	/* Slash separating month from day... */
	token = FUNC1(&val, cfile);
	if (token != SLASH) {
		FUNC2("expected slash separating month from day.");
		if (token != SEMI)
			FUNC3(cfile);
		return (0);
	}

	/* Month... */
	token = FUNC1(&val, cfile);
	if (token != NUMBER) {
		FUNC2("numeric day of month expected.");
		if (token != SEMI)
			FUNC3(cfile);
		return (0);
	}
	tm.tm_mday = FUNC0(val);

	/* Hour... */
	token = FUNC1(&val, cfile);
	if (token != NUMBER) {
		FUNC2("numeric hour expected.");
		if (token != SEMI)
			FUNC3(cfile);
		return (0);
	}
	tm.tm_hour = FUNC0(val);

	/* Colon separating hour from minute... */
	token = FUNC1(&val, cfile);
	if (token != COLON) {
		FUNC2("expected colon separating hour from minute.");
		if (token != SEMI)
			FUNC3(cfile);
		return (0);
	}

	/* Minute... */
	token = FUNC1(&val, cfile);
	if (token != NUMBER) {
		FUNC2("numeric minute expected.");
		if (token != SEMI)
			FUNC3(cfile);
		return (0);
	}
	tm.tm_min = FUNC0(val);

	/* Colon separating minute from second... */
	token = FUNC1(&val, cfile);
	if (token != COLON) {
		FUNC2("expected colon separating hour from minute.");
		if (token != SEMI)
			FUNC3(cfile);
		return (0);
	}

	/* Minute... */
	token = FUNC1(&val, cfile);
	if (token != NUMBER) {
		FUNC2("numeric minute expected.");
		if (token != SEMI)
			FUNC3(cfile);
		return (0);
	}
	tm.tm_sec = FUNC0(val);
	tm.tm_isdst = 0;

	/* XXX: We assume that mktime does not use tm_yday. */
	tm.tm_yday = 0;

	/* Make sure the date ends in a semicolon... */
	token = FUNC1(&val, cfile);
	if (token != SEMI) {
		FUNC2("semicolon expected.");
		FUNC3(cfile);
		return (0);
	}

	/* Guess the time value... */
	guess = ((((((365 * (tm.tm_year - 70) +	/* Days in years since '70 */
		    (tm.tm_year - 69) / 4 +	/* Leap days since '70 */
		    (tm.tm_mon			/* Days in months this year */
		    ? months[tm.tm_mon - 1]
		    : 0) +
		    (tm.tm_mon > 1 &&		/* Leap day this year */
		    !((tm.tm_year - 72) & 3)) +
		    tm.tm_mday - 1) * 24) +	/* Day of month */
		    tm.tm_hour) * 60) +
		    tm.tm_min) * 60) + tm.tm_sec;

	/*
	 * This guess could be wrong because of leap seconds or other
	 * weirdness we don't know about that the system does.   For
	 * now, we're just going to accept the guess, but at some point
	 * it might be nice to do a successive approximation here to get
	 * an exact value.   Even if the error is small, if the server
	 * is restarted frequently (and thus the lease database is
	 * reread), the error could accumulate into something
	 * significant.
	 */
	return (guess);
}