#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* di_name; } ;
typedef  char Char ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 size_t FUNC2 (char*) ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/  (*) (char*)) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*,char*) ; 
 TYPE_1__* dcwd ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (size_t) ; 

__attribute__((used)) static Char *
FUNC10(Char *cp)
{
    Char *dp, *ret;

    if (!FUNC0(cp))
    {
	Char *p, *q;
	size_t cwdlen;

	cwdlen = FUNC2(dcwd->di_name);
	if (cwdlen == 1)	/* root */
	    cwdlen = 0;
	dp = FUNC9((cwdlen + FUNC2(cp) + 2) * sizeof(Char));
	for (p = dp, q = dcwd->di_name; (*p++ = *q++) != '\0';)
	    continue;
	if (cwdlen)
	    p[-1] = '/';
	else
	    p--;		/* don't add a / after root */
	FUNC1(p, cp);
	FUNC8(cp);
	cp = dp;
	dp += cwdlen;
    }
    else
	dp = cp;

#if defined(WINNT_NATIVE)
    return agetcwd();
#elif defined(__CYGWIN__)
    if (ABSOLUTEP(cp) && cp[1] == ':') { /* Only DOS paths are treated that way */
	return agetcwd();
    } else {
	cleanup_push(cp, xfree);
    	ret = dcanon(cp, dp);
	cleanup_ignore(cp);
	cleanup_until(cp);
    }
#else /* !WINNT_NATIVE */
    FUNC5(cp, xfree);
    ret = FUNC7(cp, dp);
    FUNC4(cp);
    FUNC6(cp);
#endif /* WINNT_NATIVE */
    return ret;
}