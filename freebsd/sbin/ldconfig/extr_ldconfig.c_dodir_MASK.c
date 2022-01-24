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
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  dewey ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int MAXDEWEY ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int*,int) ; 
 scalar_t__ errno ; 
 int FUNC3 (int*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 struct dirent* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

int
FUNC10(char *dir, int silent)
{
	DIR		*dd;
	struct dirent	*dp;
	char		name[MAXPATHLEN];
	int		dewey[MAXDEWEY], ndewey;

	if ((dd = FUNC5(dir)) == NULL) {
		if (silent && errno == ENOENT)	/* Ignore the error */
			return 0;
		FUNC9("%s", dir);
		return -1;
	}

	while ((dp = FUNC6(dd)) != NULL) {
		int n;
		char *cp;

		/* Check for `lib' prefix */
		if (dp->d_name[0] != 'l' ||
		    dp->d_name[1] != 'i' ||
		    dp->d_name[2] != 'b')
			continue;

		/* Copy the entry minus prefix */
		(void)FUNC7(name, dp->d_name + 3);
		n = FUNC8(name);
		if (n < 4)
			continue;

		/* Find ".so." in name */
		for (cp = name + n - 4; cp > name; --cp) {
			if (cp[0] == '.' &&
			    cp[1] == 's' &&
			    cp[2] == 'o' &&
			    cp[3] == '.')
				break;
		}
		if (cp <= name)
			continue;

		*cp = '\0';
		if (!FUNC4(*(cp+4)))
			continue;

		FUNC0((caddr_t)dewey, sizeof(dewey));
		ndewey = FUNC3(dewey, cp + 4);
		if (ndewey < 2)
			continue;
		FUNC2(dir, dp->d_name, name, dewey, ndewey);
	}

	FUNC1(dd);
	return 0;
}