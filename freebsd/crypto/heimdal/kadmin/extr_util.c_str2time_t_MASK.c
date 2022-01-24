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
typedef  int /*<<< orphan*/  tm2 ;
typedef  int /*<<< orphan*/  tm ;
typedef  scalar_t__ time_t ;
struct tm {int tm_hour; int tm_min; int tm_sec; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct tm*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 char* FUNC4 (char const*,char*,struct tm*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct tm,int /*<<< orphan*/ ) ; 

int
FUNC7 (const char *str, time_t *t)
{
    const char *p;
    struct tm tm, tm2;

    FUNC1 (&tm, 0, sizeof (tm));
    FUNC1 (&tm2, 0, sizeof (tm2));

    while(FUNC0((unsigned char)*str))
	str++;

    if (str[0] == '+') {
	str++;
	*t = FUNC2(str, "month");
	if (*t < 0)
	    return -1;
	*t += FUNC5(NULL);
	return 0;
    }

    if(FUNC3(str, "never") == 0) {
	*t = 0;
	return 0;
    }

    if(FUNC3(str, "now") == 0) {
	*t = FUNC5(NULL);
	return 0;
    }

    p = FUNC4 (str, "%Y-%m-%d", &tm);

    if (p == NULL)
	return -1;

    while(FUNC0((unsigned char)*p))
	p++;

    /* XXX this is really a bit optimistic, we should really complain
       if there was a problem parsing the time */
    if(p[0] != '\0' && FUNC4 (p, "%H:%M:%S", &tm2) != NULL) {
	tm.tm_hour = tm2.tm_hour;
	tm.tm_min  = tm2.tm_min;
	tm.tm_sec  = tm2.tm_sec;
    } else {
	/* Do it on the end of the day */
	tm.tm_hour = 23;
	tm.tm_min  = 59;
	tm.tm_sec  = 59;
    }

    *t = FUNC6 (tm, 0);
    return 0;
}