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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

int
FUNC7(char *fname, int silent)
{
	FILE *hfp;
	char buf[MAXPATHLEN];
	int rval = 0;
	char *cp, *sp;

	if ((hfp = FUNC3(fname, "r")) == NULL) {
		FUNC5("%s", fname);
		return -1;
	}

	while (FUNC2(buf, sizeof(buf), hfp)) {
		cp = buf;
		while (FUNC4(*cp))
			cp++;
		if (*cp == '#' || *cp == '\0')
			continue;
		sp = cp;
		while (!FUNC4(*cp) && *cp != '\0')
			cp++;

		if (*cp != '\n') {
			*cp = '\0';
			FUNC6("%s: trailing characters ignored", sp);
		}

		*cp = '\0';

		rval |= FUNC0(sp, silent);
	}

	(void)FUNC1(hfp);
	return rval;
}