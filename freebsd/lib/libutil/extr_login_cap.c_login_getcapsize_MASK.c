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
    char    *ep, *res, *oval;
    int	    r;
    rlim_t  tot;

    if (lc == NULL || lc->lc_cap == NULL)
	return def;

    if ((r = FUNC0(lc->lc_cap, cap, &res)) == -1)
	return def;
    else if (r < 0) {
	errno = ERANGE;
	return error;
    }

    if (FUNC1(res))
	return RLIM_INFINITY;

    errno = 0;
    tot = 0;
    oval = res;
    while (*res) {
	rlim_t siz = FUNC3(res, &ep, 0);
	rlim_t mult = 1;

	if (ep == NULL || ep == res || errno != 0) {
	invalid:
	    FUNC4(LOG_WARNING, "login_getcapsize: class '%s' bad value %s=%s",
		   lc->lc_class, cap, oval);
	    errno = ERANGE;
	    return error;
	}
	switch (*ep++) {
	case 0:	/* end of string */
	    ep--;
	    break;
	case 'b': case 'B':	/* 512-byte blocks */
	    mult = 512;
	    break;
	case 'k': case 'K':	/* 1024-byte Kilobytes */
	    mult = 1024;
	    break;
	case 'm': case 'M':	/* 1024-k kbytes */
	    mult = 1024 * 1024;
	    break;
	case 'g': case 'G':	/* 1Gbyte */
	    mult = 1024 * 1024 * 1024;
	    break;
	case 't': case 'T':	/* 1TBte */
	    mult = 1024LL * 1024LL * 1024LL * 1024LL;
	    break;
	default:
	    goto invalid;
	}
	res = ep;
	tot += FUNC2(siz, mult);
	if (errno)
	    goto invalid;
    }

    return tot;
}