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
typedef  int u_int ;
struct stat {int st_mode; } ;
struct dirent {scalar_t__ d_ino; char* d_name; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int FILEMODEMASK ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,struct stat*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 scalar_t__ pflag ; 
 struct dirent* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  remout ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int,char**) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (char*) ; 
 char* FUNC13 (char*,char) ; 
 scalar_t__ verbose_mode ; 
 int /*<<< orphan*/  vwrite ; 

void
FUNC14(char *name, struct stat *statp)
{
	DIR *dirp;
	struct dirent *dp;
	char *last, *vect[1], path[PATH_MAX];

	if (!(dirp = FUNC4(name))) {
		FUNC7("%s: %s", name, FUNC11(errno));
		return;
	}
	last = FUNC13(name, '/');
	if (last == NULL)
		last = name;
	else
		last++;
	if (pflag) {
		if (FUNC2(remout, verbose_mode, statp) < 0) {
			FUNC1(dirp);
			return;
		}
	}
	(void) FUNC8(path, sizeof path, "D%04o %d %.1024s\n",
	    (u_int) (statp->st_mode & FILEMODEMASK), 0, last);
	if (verbose_mode)
		FUNC3(stderr, "Entering directory: %s", path);
	(void) FUNC0(vwrite, remout, path, FUNC12(path));
	if (FUNC6() < 0) {
		FUNC1(dirp);
		return;
	}
	while ((dp = FUNC5(dirp)) != NULL) {
		if (dp->d_ino == 0)
			continue;
		if (!FUNC10(dp->d_name, ".") || !FUNC10(dp->d_name, ".."))
			continue;
		if (FUNC12(name) + 1 + FUNC12(dp->d_name) >= sizeof(path) - 1) {
			FUNC7("%s/%s: name too long", name, dp->d_name);
			continue;
		}
		(void) FUNC8(path, sizeof path, "%s/%s", name, dp->d_name);
		vect[0] = path;
		FUNC9(1, vect);
	}
	(void) FUNC1(dirp);
	(void) FUNC0(vwrite, remout, "E\n", 2);
	(void) FUNC6();
}