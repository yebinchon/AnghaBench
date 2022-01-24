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
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static char *
FUNC3(char *dest, const char *src)
{
	const char *p;

	/* Handle the null filename case. */
	if (src == NULL || *src == '\0') {
		FUNC1(dest, "GNUSparseFile/blank");
		return (dest);
	}

	/* Prune final '/' and other unwanted final elements. */
	p = src + FUNC2(src);
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

	/* General case: build a ustar-compatible name adding
	 * "/GNUSparseFile/". */
	FUNC0(dest, src, p - src, "GNUSparseFile.0");

	return (dest);
}