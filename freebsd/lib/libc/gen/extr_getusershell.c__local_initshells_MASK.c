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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int NS_SUCCESS ; 
 int NS_UNAVAIL ; 
 int /*<<< orphan*/  _PATH_SHELLS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 scalar_t__ sl ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(void	*rv, void *cb_data, va_list ap)
{
	char	*sp, *cp;
	FILE	*fp;
	char	 line[MAXPATHLEN + 2];

	if (sl)
		FUNC5(sl, 1);
	sl = FUNC6();

	if ((fp = FUNC2(_PATH_SHELLS, "re")) == NULL)
		return NS_UNAVAIL;

	while (FUNC1(line, MAXPATHLEN + 1, fp) != NULL) {
		cp = line;
		while (*cp != '#' && *cp != '/' && *cp != '\0')
			cp++;
		if (*cp == '#' || *cp == '\0')
			continue;
		sp = cp;
		while (!FUNC3(*cp) && *cp != '#' && *cp != '\0')
			cp++;
		*cp = '\0';
		FUNC4(sl, FUNC7(sp));
	}
	(void)FUNC0(fp);
	return NS_SUCCESS;
}