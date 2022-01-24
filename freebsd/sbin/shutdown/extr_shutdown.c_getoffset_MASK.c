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
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int /*<<< orphan*/  tm_sec; } ;

/* Variables and functions */
 void* FUNC0 (char*) ; 
 int LONG_MAX ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 struct tm* FUNC5 (int*) ; 
 int FUNC6 (struct tm*) ; 
 int offset ; 
 int shuttime ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 
 int FUNC9 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void
FUNC12(char *timearg)
{
	struct tm *lt;
	char *p;
	time_t now;
	int maybe_today, this_year;
	char *timeunit;

	(void)FUNC10(&now);

	if (!FUNC7(timearg, "now")) {		/* now */
		offset = 0;
		shuttime = now;
		return;
	}

	if (*timearg == '+') {				/* +minutes */
		if (!FUNC4(*++timearg))
			FUNC1();
		errno = 0;
		offset = FUNC9(timearg, &timeunit, 10);
		if (offset < 0 || offset == LONG_MAX || errno != 0)
			FUNC1();
		if (timeunit[0] == '\0' || FUNC7(timeunit, "m") == 0 ||
		    FUNC7(timeunit, "min") == 0 ||
		    FUNC7(timeunit, "mins") == 0) {
			offset *= 60;
		} else if (FUNC7(timeunit, "h") == 0 ||
		    FUNC7(timeunit, "hour") == 0 ||
		    FUNC7(timeunit, "hours") == 0) {
			offset *= 60 * 60;
		} else if (FUNC7(timeunit, "s") == 0 ||
		    FUNC7(timeunit, "sec") == 0 ||
		    FUNC7(timeunit, "secs") == 0) {
			offset *= 1;
		} else {
			FUNC1();
		}
		shuttime = now + offset;
		return;
	}

	/* handle hh:mm by getting rid of the colon */
	for (p = timearg; *p; ++p)
		if (!FUNC3(*p) || !FUNC4(*p)) {
			if (*p == ':' && FUNC8(p) == 3) {
				p[0] = p[1];
				p[1] = p[2];
				p[2] = '\0';
			}
			else
				FUNC1();
		}

	FUNC11("TZ");					/* OUR timezone */
	lt = FUNC5(&now);				/* current time val */
	maybe_today = 1;

	switch(FUNC8(timearg)) {
	case 10:
		this_year = lt->tm_year;
		lt->tm_year = FUNC0(timearg);
		/*
		 * check if the specified year is in the next century.
		 * allow for one year of user error as many people will
		 * enter n - 1 at the start of year n.
		 */
		if (lt->tm_year < (this_year % 100) - 1)
			lt->tm_year += 100;
		/* adjust for the year 2000 and beyond */
		lt->tm_year += (this_year - (this_year % 100));
		/* FALLTHROUGH */
	case 8:
		lt->tm_mon = FUNC0(timearg);
		if (--lt->tm_mon < 0 || lt->tm_mon > 11)
			FUNC1();
		/* FALLTHROUGH */
	case 6:
		maybe_today = 0;
		lt->tm_mday = FUNC0(timearg);
		if (lt->tm_mday < 1 || lt->tm_mday > 31)
			FUNC1();
		/* FALLTHROUGH */
	case 4:
		lt->tm_hour = FUNC0(timearg);
		if (lt->tm_hour < 0 || lt->tm_hour > 23)
			FUNC1();
		lt->tm_min = FUNC0(timearg);
		if (lt->tm_min < 0 || lt->tm_min > 59)
			FUNC1();
		lt->tm_sec = 0;
		if ((shuttime = FUNC6(lt)) == -1)
			FUNC1();

		if ((offset = shuttime - now) < 0) {
			if (!maybe_today)
				FUNC2(1, "that time is already past.");

			/*
			 * If the user only gave a time, assume that
			 * any time earlier than the current time
			 * was intended to be that time tomorrow.
			 */
			lt->tm_mday++;
			if ((shuttime = FUNC6(lt)) == -1)
				FUNC1();
			if ((offset = shuttime - now) < 0) {
				FUNC2(1, "tomorrow is before today?");
			}
		}
		break;
	default:
		FUNC1();
	}
}