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
 int /*<<< orphan*/  ENAMETOOLONG ; 
 size_t MAXPATHLEN ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 int FUNC2 (char*) ; 

char *
FUNC3(char *path)
{
	static char *dname = NULL;
	size_t len;
	const char *endp;

	if (dname == NULL) {
		dname = (char *)FUNC0(MAXPATHLEN);
		if (dname == NULL)
			return(NULL);
	}

	/* Empty or NULL string gets treated as "." */
	if (path == NULL || *path == '\0') {
		dname[0] = '.';
		dname[1] = '\0';
		return (dname);
	}

	/* Strip any trailing slashes */
	endp = path + FUNC2(path) - 1;
	while (endp > path && *endp == '/')
		endp--;

	/* Find the start of the dir */
	while (endp > path && *endp != '/')
		endp--;

	/* Either the dir is "/" or there are no slashes */
	if (endp == path) {
		dname[0] = *endp == '/' ? '/' : '.';
		dname[1] = '\0';
		return (dname);
	} else {
		/* Move forward past the separating slashes */
		do {
			endp--;
		} while (endp > path && *endp == '/');
	}

	len = endp - path + 1;
	if (len >= MAXPATHLEN) {
		errno = ENAMETOOLONG;
		return (NULL);
	}
	FUNC1(dname, path, len);
	dname[len] = '\0';
	return (dname);
}