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
struct open_file {int dummy; } ;
struct iso_directory_record {char* name; int /*<<< orphan*/  name_len; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct open_file*,struct iso_directory_record*,int,size_t*) ; 
 char* FUNC2 (char const*,char) ; 
 size_t FUNC3 (char const*) ; 
 char FUNC4 (char const) ; 

__attribute__((used)) static int
FUNC5(struct open_file *f, const char *path, struct iso_directory_record *dp,
    int use_rrip, int lenskip)
{
	size_t len, plen;
	char *cp, *sep;
	int i, icase;

	if (use_rrip)
		cp = FUNC1(f, dp, lenskip, &len);
	else
		cp = NULL;
	if (cp == NULL) {
		len = FUNC0(dp->name_len);
		cp = dp->name;
		icase = 1;
	} else
		icase = 0;

	sep = FUNC2(path, '/');
	if (sep != NULL) {
		plen = sep - path;
	} else {
		plen = FUNC3(path);
	}

	if (plen != len)
		return (0);

	for (i = len; --i >= 0; path++, cp++) {
		if (!*path || *path == '/')
			break;
		if (*path == *cp)
			continue;
		if (!icase && FUNC4(*path) == *cp)
			continue;
		return 0;
	}
	if (*path && *path != '/')
		return 0;
	/*
	 * Allow stripping of trailing dots and the version number.
	 * Note that this will find the first instead of the last version
	 * of a file.
	 */
	if (i >= 0 && (*cp == ';' || *cp == '.')) {
		/* This is to prevent matching of numeric extensions */
		if (*cp == '.' && cp[1] != ';')
			return 0;
		while (--i >= 0)
			if (*++cp != ';' && (*cp < '0' || *cp > '9'))
				return 0;
	}
	return 1;
}