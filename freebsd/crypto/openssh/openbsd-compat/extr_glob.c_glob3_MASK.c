#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct glob_lim {int /*<<< orphan*/  glim_readdir; } ;
struct dirent {scalar_t__* d_name; } ;
struct TYPE_5__ {int gl_flags; int /*<<< orphan*/  (* gl_closedir ) (void*) ;struct dirent* (* gl_readdir ) (void*) ;scalar_t__ (* gl_errfunc ) (char*,scalar_t__) ;} ;
typedef  TYPE_1__ glob_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  void DIR ;
typedef  scalar_t__ Char ;

/* Variables and functions */
 scalar_t__ DOT ; 
 scalar_t__ EOS ; 
 int GLOB_ABORTED ; 
 int GLOB_ALTDIRFUNC ; 
 int GLOB_ERR ; 
 int GLOB_LIMIT ; 
 scalar_t__ GLOB_LIMIT_READDIR ; 
 int /*<<< orphan*/  GLOB_LIMIT_RECUR ; 
 int GLOB_NOSPACE ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  SEP ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (scalar_t__*,char*,int) ; 
 void* FUNC2 (scalar_t__*,TYPE_1__*) ; 
 int FUNC3 (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,TYPE_1__*,struct glob_lim*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ readdir ; 
 scalar_t__ FUNC5 (char*,scalar_t__) ; 
 struct dirent* FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

__attribute__((used)) static int
FUNC8(Char *pathbuf, Char *pathbuf_last, Char *pathend, Char *pathend_last,
    Char *pattern, Char *restpattern, Char *restpattern_last, glob_t *pglob,
    struct glob_lim *limitp)
{
	struct dirent *dp;
	DIR *dirp;
	int err;
	char buf[MAXPATHLEN];

	/*
	 * The readdirfunc declaration can't be prototyped, because it is
	 * assigned, below, to two functions which are prototyped in glob.h
	 * and dirent.h as taking pointers to differently typed opaque
	 * structures.
	 */
	struct dirent *(*readdirfunc)(void *);

	if (pathend > pathend_last)
		return (1);
	*pathend = EOS;
	errno = 0;

	if ((dirp = FUNC2(pathbuf, pglob)) == NULL) {
		/* TODO: don't call for ENOENT or ENOTDIR? */
		if (pglob->gl_errfunc) {
			if (FUNC1(pathbuf, buf, sizeof(buf)))
				return(GLOB_ABORTED);
			if (pglob->gl_errfunc(buf, errno) ||
			    pglob->gl_flags & GLOB_ERR)
				return(GLOB_ABORTED);
		}
		return(0);
	}

	err = 0;

	/* Search directory for matching names. */
	if (pglob->gl_flags & GLOB_ALTDIRFUNC)
		readdirfunc = pglob->gl_readdir;
	else
		readdirfunc = (struct dirent *(*)(void *))readdir;
	while ((dp = (*readdirfunc)(dirp))) {
		u_char *sc;
		Char *dc;

		if ((pglob->gl_flags & GLOB_LIMIT) &&
		    limitp->glim_readdir++ >= GLOB_LIMIT_READDIR) {
			errno = 0;
			*pathend++ = SEP;
			*pathend = EOS;
			err = GLOB_NOSPACE;
			break;
		}

		/* Initial DOT must be matched literally. */
		if (dp->d_name[0] == DOT && *pattern != DOT)
			continue;
		dc = pathend;
		sc = (u_char *) dp->d_name;
		while (dc < pathend_last && (*dc++ = *sc++) != EOS)
			;
		if (dc >= pathend_last) {
			*dc = EOS;
			err = 1;
			break;
		}

		if (!FUNC4(pathend, pattern, restpattern, GLOB_LIMIT_RECUR)) {
			*pathend = EOS;
			continue;
		}
		err = FUNC3(pathbuf, pathbuf_last, --dc, pathend_last,
		    restpattern, restpattern_last, pglob, limitp);
		if (err)
			break;
	}

	if (pglob->gl_flags & GLOB_ALTDIRFUNC)
		(*pglob->gl_closedir)(dirp);
	else
		FUNC0(dirp);
	return(err);
}