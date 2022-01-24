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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 size_t FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 

void
FUNC7(char *rawname, char *canonname, size_t len)
{
	char *cp, *np;

	if (FUNC3(rawname, ".") == 0 || FUNC6(rawname, "./", 2) == 0)
		(void) FUNC4(canonname, "");
	else if (rawname[0] == '/')
		(void) FUNC4(canonname, ".");
	else
		(void) FUNC4(canonname, "./");
	if (FUNC5(canonname) + FUNC5(rawname) >= len) {
		FUNC1(stderr, "canonname: not enough buffer space\n");
		FUNC0(1);
	}
		
	(void) FUNC2(canonname, rawname);
	/*
	 * Eliminate multiple and trailing '/'s
	 */
	for (cp = np = canonname; *np != '\0'; cp++) {
		*cp = *np++;
		while (*cp == '/' && *np == '/')
			np++;
	}
	*cp = '\0';
	if (*--cp == '/')
		*cp = '\0';
	/*
	 * Eliminate extraneous "." and ".." from pathnames.
	 */
	for (np = canonname; *np != '\0'; ) {
		np++;
		cp = np;
		while (*np != '/' && *np != '\0')
			np++;
		if (np - cp == 1 && *cp == '.') {
			cp--;
			(void) FUNC4(cp, np);
			np = cp;
		}
		if (np - cp == 2 && FUNC6(cp, "..", 2) == 0) {
			cp--;
			while (cp > &canonname[1] && *--cp != '/')
				/* find beginning of name */;
			(void) FUNC4(cp, np);
			np = cp;
		}
	}
}