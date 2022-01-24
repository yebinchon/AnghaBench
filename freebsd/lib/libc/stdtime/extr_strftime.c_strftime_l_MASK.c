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
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  locale_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IN_NONE ; 
 int IN_SOME ; 
 int IN_THIS ; 
 int /*<<< orphan*/  YEAR_2000_NAME ; 
 char* FUNC1 (char*,struct tm const*,char*,char*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 () ; 

size_t
FUNC6(char * __restrict s, size_t maxsize, const char * __restrict format,
    const struct tm * __restrict t, locale_t loc)
{
	char *	p;
	int	warn;
	FUNC0(loc);

	FUNC5();
	warn = IN_NONE;
	p = FUNC1(((format == NULL) ? "%c" : format), t, s, s + maxsize, &warn, loc);
#ifndef NO_RUN_TIME_WARNINGS_ABOUT_YEAR_2000_PROBLEMS_THANK_YOU
	if (warn != IN_NONE && FUNC4(YEAR_2000_NAME) != NULL) {
		(void) FUNC2(stderr, loc, "\n");
		if (format == NULL)
			(void) FUNC3("NULL strftime format ", stderr);
		else	(void) FUNC2(stderr, loc, "strftime format \"%s\" ",
				format);
		(void) FUNC3("yields only two digits of years in ", stderr);
		if (warn == IN_SOME)
			(void) FUNC3("some locales", stderr);
		else if (warn == IN_THIS)
			(void) FUNC3("the current locale", stderr);
		else	(void) FUNC3("all locales", stderr);
		(void) FUNC3("\n", stderr);
	}
#endif /* !defined NO_RUN_TIME_WARNINGS_ABOUT_YEAR_2000_PROBLEMS_THANK_YOU */
	if (p == s + maxsize)
		return (0);
	*p = '\0';
	return p - s;
}