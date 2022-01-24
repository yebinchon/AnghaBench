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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (char) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 

__attribute__((used)) static void
FUNC9(const char *hintsfile, const char *listfile)
{
	FILE	*fp;
	char	 buf[MAXPATHLEN];
	int	 linenum;

	if ((fp = FUNC5(listfile, "r")) == NULL)
		FUNC1(1, "%s", listfile);

	linenum = 0;
	while (FUNC4(buf, sizeof buf, fp) != NULL) {
		char	*cp, *sp;

		linenum++;
		cp = buf;
		/* Skip leading white space. */
		while (FUNC6(*cp))
			cp++;
		if (*cp == '#' || *cp == '\0')
			continue;
		sp = cp;
		/* Advance over the directory name. */
		while (!FUNC6(*cp) && *cp != '\0')
			cp++;
		/* Terminate the string and skip trailing white space. */
		if (*cp != '\0') {
			*cp++ = '\0';
			while (FUNC6(*cp))
				cp++;
		}
		/* Now we had better be at the end of the line. */
		if (*cp != '\0')
			FUNC8("%s:%d: trailing characters ignored",
			    listfile, linenum);

		if ((sp = FUNC7(sp)) == NULL)
			FUNC2(1, "Out of memory");
		FUNC0(hintsfile, sp, 0);
	}

	FUNC3(fp);
}