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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 
 char** emptyextlist ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static char *
FUNC7(const char *path, const char *name, int namelen, char **extlist)
{
	struct stat	st;
	char	*result, *cp, **cpp;
	int		pathlen, extlen, len;

	pathlen = FUNC6(path);
	extlen = 0;
	if (extlist == NULL)
		extlist = emptyextlist;
	for (cpp = extlist; *cpp; cpp++) {
		len = FUNC6(*cpp);
		if (len > extlen)
			extlen = len;
	}
	result = FUNC3(pathlen + namelen + extlen + 2);
	if (result == NULL)
		return (NULL);
	FUNC1(path, result, pathlen);
	if (pathlen > 0 && result[pathlen - 1] != '/')
		result[pathlen++] = '/';
	cp = result + pathlen;
	FUNC1(name, cp, namelen);
	cp += namelen;
	for (cpp = extlist; *cpp; cpp++) {
		FUNC5(cp, *cpp);
		if (FUNC4(result, &st) == 0 && FUNC0(st.st_mode))
			return result;
	}
	FUNC2(result);
	return NULL;
}