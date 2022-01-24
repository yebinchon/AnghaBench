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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int,char*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static char *
FUNC5(char *dest, const char *src)
{
	char buff[64];
	const char *p;

	/* Handle the null filename case. */
	if (src == NULL || *src == '\0') {
		FUNC3(dest, "PaxHeader/blank");
		return (dest);
	}

	/* Prune final '/' and other unwanted final elements. */
	p = src + FUNC4(src);
	for (;;) {
		/* Ends in "/", remove the '/' */
		if (p > src && p[-1] == '/') {
			--p;
			continue;
		}
		/* Ends in "/.", remove the '.' */
		if (p > src + 1 && p[-1] == '.'
		    && p[-2] == '/') {
			--p;
			continue;
		}
		break;
	}

	/* Pathological case: After above, there was nothing left.
	 * This includes "/." "/./." "/.//./." etc. */
	if (p == src) {
		FUNC3(dest, "/PaxHeader/rootdir");
		return (dest);
	}

	/* Convert unadorned "." into a suitable filename. */
	if (*src == '.' && p == src + 1) {
		FUNC3(dest, "PaxHeader/currentdir");
		return (dest);
	}

	/*
	 * TODO: Push this string into the 'pax' structure to avoid
	 * recomputing it every time.  That will also open the door
	 * to having clients override it.
	 */
#if HAVE_GETPID && 0  /* Disable this for now; see above comment. */
	sprintf(buff, "PaxHeader.%d", getpid());
#else
	/* If the platform can't fetch the pid, don't include it. */
	FUNC3(buff, "PaxHeader");
#endif
	/* General case: build a ustar-compatible name adding
	 * "/PaxHeader/". */
	FUNC0(dest, src, p - src, buff);

	return (dest);
}