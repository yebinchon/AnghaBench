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
struct varent {int /*<<< orphan*/ ** vec; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int EISDIR ; 
#define  ENOENT 130 
#define  ENOEXEC 129 
#define  ENOMEM 128 
 int /*<<< orphan*/  ERR_ARCH ; 
 int /*<<< orphan*/  ERR_SYSTEM ; 
 int O_LARGEFILE ; 
 int O_RDONLY ; 
 int /*<<< orphan*/ * STR_BSHELL ; 
 int /*<<< orphan*/ * STR_SHELLPATH ; 
 int /*<<< orphan*/  STRshell ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** Vexpath ; 
 char** Vt ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct varent* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  aliases ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC7 (char*,char**) ; 
 int /*<<< orphan*/  exerr ; 
 int /*<<< orphan*/ ** expath ; 
 int FUNC8 (int,int /*<<< orphan*/ ***) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char) ; 
 int /*<<< orphan*/  FUNC10 (char*,char**) ; 
 int /*<<< orphan*/ ** FUNC11 (int /*<<< orphan*/ **) ; 
 char** FUNC12 (int /*<<< orphan*/ **) ; 
 char* FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ **) ; 
 int FUNC20 (char*,int) ; 
 int FUNC21 (int,char*,int) ; 

__attribute__((used)) static void
FUNC22(Char *sf, Char **st)
{
    char **t;
    char *f;
    struct varent *v;
    Char  **vp;
    Char   *lastsh[2];
    char    pref[2];
    int     fd;
    Char   *st0, **ost;

    /* The order for the conversions is significant */
    t = FUNC12(st);
    f = FUNC13(sf);
#ifdef VFORK
    Vt = t;
#endif /* VFORK */
    errno = 0;			/* don't use a previous error */
#ifdef apollo
    /*
     * If we try to execute an nfs mounted directory on the apollo, we
     * hang forever. So until apollo fixes that..
     */
    {
	struct stat stb;
	if (stat(f, &stb) == 0 && S_ISDIR(stb.st_mode))
	    errno = EISDIR;
    }
    if (errno == 0)
#endif /* apollo */
    {
#ifdef ISC_POSIX_EXEC_BUG
	__setostype(0);		/* "0" is "__OS_SYSV" in <sys/user.h> */
#endif /* ISC_POSIX_EXEC_BUG */
	(void) FUNC7(f, t);
#ifdef ISC_POSIX_EXEC_BUG
	__setostype(1);		/* "1" is "__OS_POSIX" in <sys/user.h> */
#endif /* ISC_POSIX_EXEC_BUG */
    }
#ifdef VFORK
    Vt = 0;
#endif /* VFORK */
    FUNC5((Char **) t);
    switch (errno) {

    case ENOEXEC:
#ifdef WINNT_NATIVE
		nt_feed_to_cmd(f,t);
#endif /* WINNT_NATIVE */
	/*
	 * From: casper@fwi.uva.nl (Casper H.S. Dik) If we could not execute
	 * it, don't feed it to the shell if it looks like a binary!
	 */
	if ((fd = FUNC20(f, O_RDONLY|O_LARGEFILE)) != -1) {
	    int nread;
	    if ((nread = FUNC21(fd, pref, 2)) == 2) {
		if (!FUNC9((unsigned char)pref[0]) &&
		    (pref[0] != '\n' && pref[0] != '\t')) {
		    int err;

		    err = errno;
		    FUNC18(fd);
		    /*
		     * We *know* what ENOEXEC means.
		     */
		    FUNC15(ERR_ARCH, f, FUNC16(err));
		}
	    }
	    else if (nread < 0) {
#ifdef convex
		int err;

		err = errno;
		xclose(fd);
		/* need to print error incase the file is migrated */
		stderror(ERR_SYSTEM, f, strerror(err));
#endif
	    }
#ifdef _PATH_BSHELL
	    else {
		pref[0] = '#';
		pref[1] = '\0';
	    }
#endif
	}
#ifdef HASHBANG
	if (fd == -1 ||
	    pref[0] != '#' || pref[1] != '!' || hashbang(fd, &vp) == -1) {
#endif /* HASHBANG */
	/*
	 * If there is an alias for shell, then put the words of the alias in
	 * front of the argument list replacing the command name. Note no
	 * interpretation of the words at this point.
	 */
	    v = FUNC4(STRshell, &aliases);
	    if (v == NULL || v->vec == NULL) {
		vp = lastsh;
		vp[0] = FUNC3(STRshell) ? FUNC17(STRshell) : STR_SHELLPATH;
		vp[1] = NULL;
#ifdef _PATH_BSHELL
		if (fd != -1 
# ifndef ISC	/* Compatible with ISC's /bin/csh */
		    && pref[0] != '#'
# endif /* ISC */
		    )
		    vp[0] = STR_BSHELL;
#endif
		vp = FUNC11(vp);
	    }
	    else
		vp = FUNC11(v->vec);
#ifdef HASHBANG
	}
#endif /* HASHBANG */
	if (fd != -1)
	    FUNC18(fd);

	st0 = st[0];
	st[0] = sf;
	ost = st;
	st = FUNC6(vp, st);	/* Splice up the new arglst */
	ost[0] = st0;
	sf = *st;
	/* The order for the conversions is significant */
	t = FUNC12(st);
	f = FUNC13(sf);
	FUNC19(st);
	FUNC5((Char **) vp);
#ifdef VFORK
	Vt = t;
#endif /* VFORK */
#ifdef ISC_POSIX_EXEC_BUG
	__setostype(0);		/* "0" is "__OS_SYSV" in <sys/user.h> */
#endif /* ISC_POSIX_EXEC_BUG */
	(void) FUNC7(f, t);
#ifdef ISC_POSIX_EXEC_BUG
	__setostype(1);		/* "1" is "__OS_POSIX" in <sys/user.h> */
#endif /* ISC_POSIX_EXEC_BUG */
#ifdef VFORK
	Vt = 0;
#endif /* VFORK */
	FUNC5((Char **) t);
	/* The sky is falling, the sky is falling! */
	FUNC15(ERR_SYSTEM, f, FUNC16(errno));
	break;

    case ENOMEM:
	FUNC15(ERR_SYSTEM, f, FUNC16(errno));
	break;

#ifdef _IBMR2
    case 0:			/* execv fails and returns 0! */
#endif /* _IBMR2 */
    case ENOENT:
	break;

    default:
	if (exerr == 0) {
	    exerr = FUNC16(errno);
	    FUNC19(expath);
	    expath = FUNC1(sf);
#ifdef VFORK
	    Vexpath = expath;
#endif /* VFORK */
	}
	break;
    }
}