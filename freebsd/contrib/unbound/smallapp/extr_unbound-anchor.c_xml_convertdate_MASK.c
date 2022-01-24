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
typedef  scalar_t__ time_t ;
struct tm {int tm_hour; int tm_min; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (struct tm*) ; 
 int FUNC3 (char const*,char*,int*,int*,...) ; 
 char* FUNC4 (char const*,char*,struct tm*) ; 
 scalar_t__ verb ; 

__attribute__((used)) static time_t
FUNC5(const char* str)
{
	time_t t = 0;
	struct tm tm;
	const char* s;
	/* for this application, ignore minus in front;
	 * only positive dates are expected */
	s = str;
	if(s[0] == '-') s++;
	FUNC0(&tm, 0, sizeof(tm));
	/* parse initial content of the string (lots of whitespace allowed) */
	s = FUNC4(s, "%t%Y%t-%t%m%t-%t%d%tT%t%H%t:%t%M%t:%t%S%t", &tm);
	if(!s) {
		if(verb) FUNC1("xml_convertdate parse failure %s\n", str);
		return 0;
	}
	/* parse remainder of date string */
	if(*s == '.') {
		/* optional '.' and fractional seconds */
		int frac = 0, n = 0;
		if(FUNC3(s+1, "%d%n", &frac, &n) < 1) {
			if(verb) FUNC1("xml_convertdate f failure %s\n", str);
			return 0;
		}
		/* fraction is not used, time_t has second accuracy */
		s++;
		s+=n;
	}
	if(*s == 'Z' || *s == 'z') {
		/* nothing to do for this */
		s++;
	} else if(*s == '+' || *s == '-') {
		/* optional timezone spec: Z or +hh:mm or -hh:mm */
		int hr = 0, mn = 0, n = 0;
		if(FUNC3(s+1, "%d:%d%n", &hr, &mn, &n) < 2) {
			if(verb) FUNC1("xml_convertdate tz failure %s\n", str);
			return 0;
		}
		if(*s == '+') {
			tm.tm_hour += hr;
			tm.tm_min += mn;
		} else {
			tm.tm_hour -= hr;
			tm.tm_min -= mn;
		}
		s++;
		s += n;
	}
	if(*s != 0) {
		/* not ended properly */
		/* but ignore, (lenient) */
	}

	t = FUNC2(&tm);
	if(t == (time_t)-1) {
		if(verb) FUNC1("xml_convertdate mktime failure\n");
		return 0;
	}
	return t;
}