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
struct inotab {long t_seekpt; } ;
struct direct {char* d_name; int d_namlen; int /*<<< orphan*/  d_ino; } ;
typedef  int /*<<< orphan*/  locname ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 scalar_t__ FAIL ; 
 int LEAF ; 
 int MAXPATHLEN ; 
 int NODE ; 
 int /*<<< orphan*/  dirp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,...) ; 
 struct inotab* FUNC1 (int /*<<< orphan*/ ) ; 
 struct direct* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,long,long) ; 
 long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int FUNC8 (char*) ; 
 long FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 long FUNC10 (char*,int /*<<< orphan*/ ,int) ; 

void
FUNC11(char *pname, ino_t ino, long (*todo)(char *, ino_t, int))
{
	struct inotab *itp;
	struct direct *dp;
	int namelen;
	long bpt;
	char locname[MAXPATHLEN];

	itp = FUNC1(ino);
	if (itp == NULL) {
		/*
		 * Pname is name of a simple file or an unchanged directory.
		 */
		(void) (*todo)(pname, ino, LEAF);
		return;
	}
	/*
	 * Pname is a dumped directory name.
	 */
	if ((*todo)(pname, ino, NODE) == FAIL)
		return;
	/*
	 * begin search through the directory
	 * skipping over "." and ".."
	 */
	(void) FUNC7(locname, pname, sizeof(locname));
	(void) FUNC6(locname, "/", sizeof(locname));
	namelen = FUNC8(locname);
	FUNC3(dirp, itp->t_seekpt, itp->t_seekpt);
	dp = FUNC2(dirp); /* "." */
	if (dp != NULL && FUNC5(dp->d_name, ".") == 0)
		dp = FUNC2(dirp); /* ".." */
	else
		FUNC0(stderr, "Warning: `.' missing from directory %s\n",
			pname);
	if (dp != NULL && FUNC5(dp->d_name, "..") == 0)
		dp = FUNC2(dirp); /* first real entry */
	else
		FUNC0(stderr, "Warning: `..' missing from directory %s\n",
			pname);
	bpt = FUNC4(dirp);
	/*
	 * a zero inode signals end of directory
	 */
	while (dp != NULL) {
		locname[namelen] = '\0';
		if (namelen + dp->d_namlen >= sizeof(locname)) {
			FUNC0(stderr, "%s%s: name exceeds %zu char\n",
			    locname, dp->d_name, sizeof(locname) - 1);
		} else {
			(void)FUNC6(locname, dp->d_name, sizeof(locname));
			FUNC11(locname, dp->d_ino, todo);
			FUNC3(dirp, bpt, itp->t_seekpt);
		}
		dp = FUNC2(dirp);
		bpt = FUNC4(dirp);
	}
}