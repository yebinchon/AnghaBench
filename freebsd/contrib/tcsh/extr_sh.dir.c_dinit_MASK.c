#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_ino; int /*<<< orphan*/  st_dev; } ;
struct directory {scalar_t__* di_name; TYPE_1__* di_prev; TYPE_1__* di_next; scalar_t__ di_count; } ;
struct TYPE_2__ {struct directory* di_prev; struct directory* di_next; } ;
typedef  scalar_t__ Char ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC1 (char*) ; 
 int /*<<< orphan*/  STRNULL ; 
 int /*<<< orphan*/  STRdirstack ; 
 scalar_t__* FUNC2 (scalar_t__*) ; 
 int VAR_NOGLOB ; 
 int VAR_READWRITE ; 
 scalar_t__* FUNC3 () ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 
 scalar_t__* FUNC8 (scalar_t__*,int /*<<< orphan*/ ) ; 
 TYPE_1__ dhead ; 
 int /*<<< orphan*/  FUNC9 (struct directory*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC11 (char*) ; 
 scalar_t__ printd ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 char* FUNC13 (scalar_t__*) ; 
 int FUNC14 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 struct directory* FUNC16 (int,int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  xfree ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC19(Char *hp)
{
    Char *cp, *tcp;
    struct directory *dp;

    /* Don't believe the login shell home, because it may be a symlink */
    tcp = FUNC3();
    if (tcp == NULL) {
	FUNC18("%s: %s\n", progname, FUNC15(errno));
	if (hp && *hp) {
	    char *xcp = FUNC13(hp);
	    FUNC10(xcp);
	    if (FUNC4(xcp) == -1)
		cp = NULL;
	    else
		cp = FUNC2(hp);
	}
	else
	    cp = NULL;
	if (cp == NULL) {
	    FUNC10("/");
	    if (FUNC4("/") == -1)
		/* I am not even try to print an error message! */
		FUNC17(1);
	    cp = FUNC1("/");
	}
    }
    else {
#ifdef S_IFLNK
	struct stat swd, shp;
	int swd_ok;

	swd_ok = stat(short2str(tcp), &swd) == 0;
	/*
	 * See if $HOME is the working directory we got and use that
	 */
	if (swd_ok && hp && *hp && stat(short2str(hp), &shp) != -1 &&
	    DEV_DEV_COMPARE(swd.st_dev, shp.st_dev)  &&
		swd.st_ino == shp.st_ino)
	    cp = Strsave(hp);
	else {
	    char   *cwd;

	    /*
	     * use PWD if we have it (for subshells)
	     */
	    if (swd_ok && (cwd = getenv("PWD")) != NULL) {
		if (stat(cwd, &shp) != -1 &&
			DEV_DEV_COMPARE(swd.st_dev, shp.st_dev) &&
		        swd.st_ino == shp.st_ino) {
		    tcp = SAVE(cwd);
		    cleanup_push(tcp, xfree);
		}
	    }
	    cleanup_push(tcp, xfree);
	    cp = dcanon(tcp, STRNULL);
	    cleanup_ignore(tcp);
	    cleanup_until(tcp);
	}
#else /* S_IFLNK */
	FUNC6(tcp, xfree);
	cp = FUNC8(tcp, STRNULL);
	FUNC5(tcp);
	FUNC7(tcp);
#endif /* S_IFLNK */
    }

    dp = FUNC16(sizeof(struct directory), 1);
    dp->di_name = cp;
    dp->di_count = 0;
    dhead.di_next = dhead.di_prev = dp;
    dp->di_next = dp->di_prev = &dhead;
    printd = 0;
    FUNC9(dp, 0);
    FUNC12(STRdirstack, dp->di_name, VAR_READWRITE|VAR_NOGLOB);
}