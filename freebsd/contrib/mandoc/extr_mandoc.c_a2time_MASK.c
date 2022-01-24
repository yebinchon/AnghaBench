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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tm*) ; 
 char* FUNC2 (char const*,char const*,struct tm*) ; 

__attribute__((used)) static int
FUNC3(time_t *t, const char *fmt, const char *p)
{
	struct tm	 tm;
	char		*pp;

	FUNC0(&tm, 0, sizeof(struct tm));

	pp = NULL;
#if HAVE_STRPTIME
	pp = strptime(p, fmt, &tm);
#endif
	if (NULL != pp && '\0' == *pp) {
		*t = FUNC1(&tm);
		return 1;
	}

	return 0;
}