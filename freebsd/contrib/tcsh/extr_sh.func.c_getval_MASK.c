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
struct limits {float limdiv; int /*<<< orphan*/  limconst; } ;
typedef  scalar_t__ RLIM_TYPE ;
typedef  char Char ;

/* Variables and functions */
 int ERR_NAME ; 
 int ERR_SCALEF ; 
 int ERR_TOOLARGE ; 
 scalar_t__ INT_MAX ; 
 scalar_t__ INT_MIN ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  RLIMIT_CPU ; 
 scalar_t__ RLIM_INFINITY ; 
 float FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 scalar_t__ FUNC4 (float) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static  RLIM_TYPE
FUNC7(struct limits *lp, Char **v)
{
    float f;
    Char   *cp = *v++;

    f = FUNC1(FUNC5(cp));

# ifdef convex
    /*
     * is f too large to cope with. limit f to minint, maxint  - X-6768 by
     * strike
     */
    if ((f < (double) INT_MIN) || (f > (double) INT_MAX)) {
	stderror(ERR_NAME | ERR_TOOLARGE);
    }
# endif /* convex */

    while (FUNC0(*cp) || *cp == '.' || *cp == 'e' || *cp == 'E')
	cp++;
    if (*cp == 0) {
	if (*v == 0)
	    return FUNC4((f * lp->limdiv) + 0.5);
	cp = *v;
    }
    switch (*cp) {
# ifdef RLIMIT_CPU
    case ':':
	if (lp->limconst != RLIMIT_CPU)
	    goto badscal;
	return f == 0.0 ? (RLIM_TYPE) 0 : restrict_limit((f * 60.0 + atof(short2str(cp + 1))));
    case 'h':
	if (lp->limconst != RLIMIT_CPU)
	    goto badscal;
	limtail(cp, "hours");
	f *= 3600.0;
	break;
# endif /* RLIMIT_CPU */
    case 'm':
# ifdef RLIMIT_CPU
	if (lp->limconst == RLIMIT_CPU) {
	    limtail(cp, "minutes");
	    f *= 60.0;
	    break;
	}
# endif /* RLIMIT_CPU */
	FUNC3(cp, "megabytes", "mbytes");
	f *= 1024.0 * 1024.0;
	break;
# ifdef RLIMIT_CPU
    case 's':
	if (lp->limconst != RLIMIT_CPU)
	    goto badscal;
	limtail(cp, "seconds");
	break;
# endif /* RLIMIT_CPU */
    case 'G':
	*cp = 'g';
	/*FALLTHROUGH*/
    case 'g':
# ifdef RLIMIT_CPU
	if (lp->limconst == RLIMIT_CPU)
	    goto badscal;
# endif /* RLIMIT_CPU */
	FUNC3(cp, "gigabytes", "gbytes");
	f *= 1024.0 * 1024.0 * 1024.0;
	break;
    case 'M':
# ifdef RLIMIT_CPU
	if (lp->limconst == RLIMIT_CPU)
	    goto badscal;
# endif /* RLIMIT_CPU */
	*cp = 'm';
	FUNC3(cp, "megabytes", "mbytes");
	f *= 1024.0 * 1024.0;
	break;
    case 'k':
# ifdef RLIMIT_CPU
	if (lp->limconst == RLIMIT_CPU)
	    goto badscal;
# endif /* RLIMIT_CPU */
	FUNC3(cp, "kilobytes", "kbytes");
	f *= 1024.0;
	break;
    case 'b':
# ifdef RLIMIT_CPU
	if (lp->limconst == RLIMIT_CPU)
	    goto badscal;
# endif /* RLIMIT_CPU */
	FUNC2(cp, "blocks");
	f *= 512.0;
	break;
    case 'u':
	FUNC2(cp, "unlimited");
	return ((RLIM_TYPE) RLIM_INFINITY);
    default:
# ifdef RLIMIT_CPU
badscal:
# endif /* RLIMIT_CPU */
	FUNC6(ERR_NAME | ERR_SCALEF);
    }
# ifdef convex
    return f == 0.0 ? (RLIM_TYPE) 0 : restrict_limit((f + 0.5));
# else
    f += 0.5;
    if (f > (float) ((RLIM_TYPE) RLIM_INFINITY))
	return ((RLIM_TYPE) RLIM_INFINITY);
    else
	return ((RLIM_TYPE) f);
# endif /* convex */
}