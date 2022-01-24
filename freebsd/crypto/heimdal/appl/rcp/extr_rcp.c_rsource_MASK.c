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
struct stat {int st_mode; scalar_t__ st_atime; scalar_t__ st_mtime; } ;
struct dirent {scalar_t__ d_ino; char* d_name; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int MODEMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 scalar_t__ pflag ; 
 struct dirent* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  remout ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int,char**) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (char*) ; 
 char* FUNC10 (char*,char) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC12(char *name, struct stat *statp)
{
	DIR *dirp;
	struct dirent *dp;
	char *last, *vect[1], path[MAXPATHLEN];

	if (!(dirp = FUNC1(name))) {
		FUNC4("%s: %s", name, FUNC8(errno));
		return;
	}
	last = FUNC10(name, '/');
	if (last == 0)
		last = name;
	else
		last++;
	if (pflag) {
		FUNC5(path, sizeof(path), "T%ld 0 %ld 0\n",
		    (long)statp->st_mtime,
		    (long)statp->st_atime);
		FUNC11(remout, path, FUNC9(path));
		if (FUNC3() < 0) {
			FUNC0(dirp);
			return;
		}
	}
	FUNC5(path, sizeof(path),
		 "D%04o %d %s\n",
		 (unsigned int)(statp->st_mode & MODEMASK), 0, last);
	FUNC11(remout, path, FUNC9(path));
	if (FUNC3() < 0) {
		FUNC0(dirp);
		return;
	}
	while ((dp = FUNC2(dirp)) != NULL) {
		if (dp->d_ino == 0)
			continue;
		if (!FUNC7(dp->d_name, ".") || !FUNC7(dp->d_name, ".."))
			continue;
		if (FUNC9(name) + 1 + FUNC9(dp->d_name) >= MAXPATHLEN - 1) {
			FUNC4("%s/%s: name too long", name, dp->d_name);
			continue;
		}
		FUNC5(path, sizeof(path), "%s/%s", name, dp->d_name);
		vect[0] = path;
		FUNC6(1, vect);
	}
	FUNC0(dirp);
	FUNC11(remout, "E\n", 2);
	FUNC3();
}