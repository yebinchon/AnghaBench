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
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;
typedef  scalar_t__ ino_t ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 int MAXPATHLEN ; 
 unsigned long PATHCTL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 size_t FUNC3 (int*) ; 
 int FUNC4 (char const*,struct stat*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int FUNC8 (char*) ; 
 char* FUNC9 (char**,char*) ; 
 int /*<<< orphan*/ * FUNC10 (char const*,char*) ; 
 int FUNC11 (int*,size_t,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (unsigned long,int*,size_t*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,...) ; 

__attribute__((used)) static int
FUNC14(const char *kldname, int quiet)
{
	char	*path, *tmppath, *element;
	struct	stat sb;
	int	mib[5];
	char	kldpath[MAXPATHLEN];
	size_t	miblen, pathlen;
	dev_t	dev;
	ino_t	ino;
	int	found;

	if (FUNC5(kldname, '/') != NULL)
		return (0);
	if (FUNC10(kldname, ".ko") == NULL)
		return (0);
	if (FUNC4(kldname, &sb) != 0)
		return (0);

	found = 0;
	dev = sb.st_dev;
	ino = sb.st_ino;

	miblen = FUNC3(mib);
	if (FUNC12(PATHCTL, mib, &miblen) != 0)
		FUNC0(1, "sysctlnametomib(%s)", PATHCTL);
	if (FUNC11(mib, miblen, NULL, &pathlen, NULL, 0) == -1)
		FUNC0(1, "getting path: sysctl(%s) - size only", PATHCTL);
	path = FUNC2(pathlen + 1);
	if (path == NULL)
		FUNC0(1, "allocating %lu bytes for the path",
		    (unsigned long)pathlen + 1);
	if (FUNC11(mib, miblen, path, &pathlen, NULL, 0) == -1)
		FUNC0(1, "getting path: sysctl(%s)", PATHCTL);
	tmppath = path;

	while ((element = FUNC9(&tmppath, ";")) != NULL) {
		FUNC7(kldpath, element, MAXPATHLEN);
		if (kldpath[FUNC8(kldpath) - 1] != '/') {
			FUNC6(kldpath, "/", MAXPATHLEN);
		}
		FUNC6(kldpath, kldname, MAXPATHLEN);

		if (FUNC4(kldpath, &sb) == -1)
			continue;

		found = 1;

		if (sb.st_dev != dev || sb.st_ino != ino) {
			if (!quiet)
				FUNC13("%s will be loaded from %s, not the "
				    "current directory", kldname, element);
			break;
		} else if (sb.st_dev == dev && sb.st_ino == ino)
			break;
	}

	FUNC1(path);

	if (!found) {
		if (!quiet)
			FUNC13("%s is not in the module path", kldname);
		return (-1);
	}

	return (0);
}