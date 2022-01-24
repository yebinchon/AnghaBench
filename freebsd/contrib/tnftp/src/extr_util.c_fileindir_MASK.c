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
typedef  int /*<<< orphan*/  parentdirbuf ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_MAX ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 size_t FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

int
FUNC7(const char *file, const char *dir)
{
	char	parentdirbuf[PATH_MAX+1], *parentdir;
	char	realdir[PATH_MAX+1];
	size_t	dirlen;

					/* determine parent directory of file */
	(void)FUNC3(parentdirbuf, file, sizeof(parentdirbuf));
	parentdir = FUNC0(parentdirbuf);
	if (FUNC2(parentdir, ".") == 0)
		return 1;		/* current directory is ok */

					/* find the directory */
	if (FUNC1(parentdir, realdir) == NULL) {
		FUNC6("Unable to determine real path of `%s'", parentdir);
		return 0;
	}
	if (realdir[0] != '/')		/* relative result is ok */
		return 1;
	dirlen = FUNC4(dir);
	if (FUNC5(realdir, dir, dirlen) == 0 &&
	    (realdir[dirlen] == '/' || realdir[dirlen] == '\0'))
		return 1;
	return 0;
}