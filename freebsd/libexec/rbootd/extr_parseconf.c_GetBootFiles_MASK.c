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
struct stat {int st_mode; } ;
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  BootDir ; 
 int /*<<< orphan*/ ** BootFiles ; 
 int C_MAXFILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int S_IFMT ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC7(void)
{
	DIR *dfd;
	struct stat statb;
	struct dirent *dp;
	int i;

	/*
	 *  Free the current list of boot files.
	 */
	for (i = 0; i < C_MAXFILE && BootFiles[i] != NULL; i++) {
		FUNC0(BootFiles[i]);
		BootFiles[i] = NULL;
	}

	/*
	 *  Open current directory to read boot file names.
	 */
	if ((dfd = FUNC3(".")) == NULL) {	/* open BootDir */
		FUNC6(LOG_ERR, "GetBootFiles: can't open directory (%s)\n",
		       BootDir);
		return(0);
	}

	/*
	 *  Read each boot file name and allocate space for it in the
	 *  list of boot files (BootFiles).  All boot files read after
	 *  C_MAXFILE will be ignored.
	 */
	i = 0;
	for (dp = FUNC4(dfd); dp != NULL; dp = FUNC4(dfd)) {
		if (FUNC5(dp->d_name, &statb) < 0 ||
		    (statb.st_mode & S_IFMT) != S_IFREG)
			continue;
		if (i == C_MAXFILE)
			FUNC6(LOG_ERR,
			       "GetBootFiles: too many boot files (%s ignored)",
			       dp->d_name);
		else if ((BootFiles[i] = FUNC1(dp->d_name)) != NULL)
			i++;
	}

	(void) FUNC2(dfd);			/* close BootDir */

	if (i == 0)				/* can't find any boot files */
		FUNC6(LOG_ERR, "GetBootFiles: no boot files (%s)\n", BootDir);

	return(i);
}