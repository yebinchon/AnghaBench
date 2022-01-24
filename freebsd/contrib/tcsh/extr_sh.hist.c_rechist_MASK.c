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
struct varent {scalar_t__* vec; } ;
struct stat {int /*<<< orphan*/  st_mode; int /*<<< orphan*/  st_gid; int /*<<< orphan*/  st_uid; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  jmp_buf_t ;
typedef  char Char ;

/* Variables and functions */
 int /*<<< orphan*/  G_ERROR ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int SHOUT ; 
 char* STRNULL ; 
 char* const STRhistfile ; 
#define  STRhistory 129 
 char* const STRhome ; 
 int /*<<< orphan*/  STRlock ; 
 char* STRmaxint ; 
 int /*<<< orphan*/  STRmerge ; 
#define  STRmhT 128 
 char* const STRsavehist ; 
 int /*<<< orphan*/ * STRtildothist ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct stat) ; 
 struct varent* FUNC5 (char* const) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/  (*) (char*)) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int didfds ; 
 int /*<<< orphan*/  FUNC8 (char**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 char* FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int) ; 
 char* FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int FUNC22 (int /*<<< orphan*/ ,struct stat*) ; 
 char* FUNC23 (int /*<<< orphan*/ ) ; 
 char* FUNC24 (char* const) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int FUNC26 (char*,int) ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 
 int /*<<< orphan*/  FUNC28 (char*,int,char*,char*,char*) ; 

void
FUNC29(Char *fname, int ref)
{
    Char    *snum, *rs;
    int     fp, ftmp, oldidfds;
    struct varent *shist;
    char path[MAXPATHLEN];
    struct stat st;
    static Char   *dumphist[] = {STRhistory, STRmhT, 0, 0};

    if (fname == NULL && !ref) 
	return;
    /*
     * If $savehist is just set, we use the value of $history
     * else we use the value in $savehist
     */
    if (((snum = FUNC24(STRsavehist)) == STRNULL) &&
	((snum = FUNC24(STRhistory)) == STRNULL))
	snum = STRmaxint;


    if (fname == NULL) {
	if ((fname = FUNC24(STRhistfile)) == STRNULL)
	    fname = FUNC2(FUNC24(STRhome), &STRtildothist[1]);
	else
	    fname = FUNC1(fname);
    }
    else
	fname = FUNC15(fname, G_ERROR);
    FUNC6(fname, xfree);

    /*
     * The 'savehist merge' feature is intended for an environment
     * with numerous shells being in simultaneous use. Imagine
     * any kind of window system. All these shells 'share' the same 
     * ~/.history file for recording their command line history. 
     * We try to handle the case of multiple shells trying to merge
     * histories at the same time, by creating semi-unique filenames
     * and saving the history there first and then trying to rename
     * them in the proper history file.
     *
     * Users that like to nuke their environment require here an atomic
     * loadhist-creat-dohist(dumphist)-close sequence which is given
		 * by optional lock parameter to savehist.
     *
     * jw.
     */ 
    /*
     * We need the didfds stuff before loadhist otherwise
     * exec in a script will fail to print if merge is set.
     * From: mveksler@iil.intel.com (Veksler Michael)
     */
    oldidfds = didfds;
    didfds = 0;
    if ((shist = FUNC5(STRsavehist)) != NULL && shist->vec != NULL) {
	size_t i;
	int merge = 0, lock = 0;

	for (i = 1; shist->vec[i]; i++) {
	    if (FUNC11(shist->vec[i], STRmerge))
		merge++;
	    if (FUNC11(shist->vec[i], STRlock))
		lock++;
	}

	if (merge) {
	    jmp_buf_t osetexit;
	    if (lock) {
#ifndef WINNT_NATIVE
		char *lockpath = FUNC23(FUNC21(fname));
		FUNC6(lockpath, xfree);
		/* Poll in 100 miliseconds interval to obtain the lock. */
		if ((FUNC9(lockpath, 100) == 0))
		    FUNC6(lockpath, dotlock_cleanup);
#endif
	    }
	    FUNC14(osetexit);
	    if (FUNC20())
		FUNC16(fname, 1);
	    FUNC19(osetexit);
	}
    }
    rs = FUNC17();
    FUNC28(path, sizeof(path), "%S.%S", fname, rs);
    FUNC27(rs);

    fp = FUNC26(path, 0600);
    if (fp == -1) {
	didfds = oldidfds;
	FUNC7(fname);
	return;
    }
    /* Try to preserve ownership and permissions of the original history file */
#ifndef WINNT_NATIVE
    if (FUNC22(FUNC21(fname), &st) != -1) {
	FUNC3(FUNC13(fp, st.st_uid, st.st_gid));
	FUNC3(FUNC12(fp, st.st_mode));
    }
#else
    UNREFERENCED_PARAMETER(st);
#endif
    ftmp = SHOUT;
    SHOUT = fp;
    dumphist[2] = snum;
    FUNC8(dumphist, NULL);
    FUNC25(fp);
    SHOUT = ftmp;
    didfds = oldidfds;
#ifndef WINNT_NATIVE
    (void)FUNC18(path, FUNC21(fname));
#else
    (void)ReplaceFile( short2str(fname),path,NULL,0,NULL,NULL);
#endif
    FUNC7(fname);
}