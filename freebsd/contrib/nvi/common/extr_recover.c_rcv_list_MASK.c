#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mtime; } ;
struct dirent {char* d_name; } ;
struct TYPE_10__ {TYPE_1__* gp; } ;
struct TYPE_9__ {char* progname; } ;
typedef  TYPE_2__ SCR ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
#define  LOCK_FAILED 130 
#define  LOCK_SUCCESS 129 
#define  LOCK_UNAVAIL 128 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  M_SYSERR ; 
 int /*<<< orphan*/  O_RECDIR ; 
 char* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC11 (char*) ; 
 scalar_t__ FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,...) ; 
 int FUNC14 (TYPE_2__*,char**,char**,int /*<<< orphan*/ *) ; 
 struct dirent* FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 scalar_t__ FUNC18 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

int
FUNC20(SCR *sp)
{
	struct dirent *dp;
	struct stat sb;
	DIR *dirp;
	FILE *fp;
	int found;
	char *p, *file, *path;
	char *dtype, *data;
	int st;

	/* Open the recovery directory for reading. */
	if (FUNC12(sp, O_RECDIR, 0))
		return (1);
	p = FUNC0(sp, O_RECDIR);
	if (FUNC1(p) || (dirp = FUNC11(".")) == NULL) {
		FUNC10(sp, M_SYSERR, p, "recdir: %s");
		return (1);
	}

	/* Read the directory. */
	for (found = 0; (dp = FUNC15(dirp)) != NULL;) {
		if (FUNC18(dp->d_name, "recover.", 8))
			continue;

		/* If it's readable, it's recoverable. */
		if ((fp = FUNC7(dp->d_name, "r")) == NULL)
			continue;

		switch (FUNC5(sp, NULL, FUNC6(fp), 1)) {
		case LOCK_FAILED:
			/*
			 * XXX
			 * Assume that a lock can't be acquired, but that we
			 * should permit recovery anyway.  If this is wrong,
			 * and someone else is using the file, we're going to
			 * die horribly.
			 */
			break;
		case LOCK_SUCCESS:
			break;
		case LOCK_UNAVAIL:
			/* If it's locked, it's live. */
			(void)FUNC4(fp);
			continue;
		}

		/* Check the headers. */
		for (file = NULL, path = NULL;
		    file == NULL || path == NULL;) {
			if ((st = FUNC14(sp, &dtype, &data, fp))) {
				if (st == 1)
					FUNC10(sp, M_ERR, dp->d_name,
					    "066|%s: malformed recovery file");
				goto next;
			}
			if (dtype == NULL)
				continue;
			if (!FUNC17(dtype, "file"))
				file = data;
			else if (!FUNC17(dtype, "path"))
				path = data;
			else
				FUNC8(data);
		}

		/*
		 * If the file doesn't exist, it's an orphaned recovery file,
		 * toss it.
		 *
		 * XXX
		 * This can occur if the backup file was deleted and we crashed
		 * before deleting the email file.
		 */
		errno = 0;
		if (FUNC16(path, &sb) &&
		    errno == ENOENT) {
			(void)FUNC19(dp->d_name);
			goto next;
		}

		/* Get the last modification time and display. */
		(void)FUNC9(FUNC6(fp), &sb);
		(void)FUNC13("%.24s: %s\n",
		    FUNC3(&sb.st_mtime), file);
		found = 1;

		/* Close, discarding lock. */
next:		(void)FUNC4(fp);
		if (file != NULL)
			FUNC8(file);
		if (path != NULL)
			FUNC8(path);
	}
	if (found == 0)
		(void)FUNC13("%s: No files to recover\n", sp->gp->progname);
	(void)FUNC2(dirp);
	return (0);
}