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
struct dirent {char* d_name; scalar_t__ d_type; } ;
typedef  int /*<<< orphan*/  curfile ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ DT_REG ; 
 scalar_t__ DT_UNKNOWN ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 size_t FUNC7 (char*,char*,size_t) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 

void
FUNC9(DIR *dirfp, char *filename, size_t filenamesize)
{
	char curfile[PATH_MAX];
	struct dirent *dp;

	FUNC0(dirfp != NULL);

	curfile[0] = '\0';

	FUNC5(dirfp);
	while ((dp = FUNC4(dirfp)) != NULL) {
		if (dp->d_name[0] < '0' || dp->d_name[0] > '9')
			continue;
		if (dp->d_type == DT_UNKNOWN)
			dp->d_type = FUNC8(dirfp, dp->d_name);
		/* We are only interested in regular files, skip the rest. */
		if (dp->d_type != DT_REG)
			continue;
		/* Skip all files "greater" than curfile. */
		if (curfile[0] != '\0' && FUNC6(dp->d_name, curfile) < 0)
			continue;
		FUNC1(FUNC7(curfile, dp->d_name, sizeof(curfile)) <
		    sizeof(curfile));
	}
	if (curfile[0] == '\0') {
		/*
		 * There are no trail files, so we return.
		 */
		FUNC3(1, "No trail files.");
		FUNC2(filename, filenamesize);
		return;
	}
	FUNC1(FUNC7(filename, curfile, filenamesize) < filenamesize);
	FUNC3(1, "Found the most recent trail file: \"%s\".", filename);
}