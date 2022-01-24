#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int rlim_t ;
struct TYPE_3__ {int /*<<< orphan*/  lc_class; int /*<<< orphan*/ * lc_cap; } ;
typedef  TYPE_1__ login_cap_t ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int RLIM_INFINITY ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,char**) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (char*) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,char*) ; 

rlim_t
FUNC5(login_cap_t *lc, const char *cap, rlim_t def, rlim_t error)
{
    char    *res, *ep, *oval;
    int	    r;
    rlim_t  tot;

    errno = 0;
    if (lc == NULL || lc->lc_cap == NULL)
	return def;

    /*
     * Look for <cap> in lc_cap.
     * If it's not there (-1), return <def>.
     * If there's an error, return <error>.
     */

    if ((r = FUNC0(lc->lc_cap, cap, &res)) == -1)
	return def;
    else if (r < 0) {
	errno = ERANGE;
	return error;
    }

    /* "inf" and "infinity" are special cases */
    if (FUNC1(res))
	return RLIM_INFINITY;

    /*
     * Now go through the string, turning something like 1h2m3s into
     * an integral value.  Whee.
     */

    errno = 0;
    tot = 0;
    oval = res;
    while (*res) {
	rlim_t tim = FUNC3(res, &ep, 0);
	rlim_t mult = 1;

	if (ep == NULL || ep == res || errno != 0) {
	invalid:
	    FUNC4(LOG_WARNING, "login_getcaptime: class '%s' bad value %s=%s",
		   lc->lc_class, cap, oval);
	    errno = ERANGE;
	    return error;
	}
	/* Look for suffixes */
	switch (*ep++) {
	case 0:
	    ep--;
	    break;	/* end of string */
	case 's': case 'S':	/* seconds */
	    break;
	case 'm': case 'M':	/* minutes */
	    mult = 60;
	    break;
	case 'h': case 'H':	/* hours */
	    mult = 60L * 60L;
	    break;
	case 'd': case 'D':	/* days */
	    mult = 60L * 60L * 24L;
	    break;
	case 'w': case 'W':	/* weeks */
	    mult = 60L * 60L * 24L * 7L;
	    break;
	case 'y': case 'Y':	/* 365-day years */
	    mult = 60L * 60L * 24L * 365L;
	    break;
	default:
	    goto invalid;
	}
	res = ep;
	tot += FUNC2(tim, mult);
	if (errno)
	    goto invalid;
    }

    return tot;
}