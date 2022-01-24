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
struct stat {unsigned long st_ino; int /*<<< orphan*/  st_dev; } ;
struct dirent {unsigned long d_ino; char* d_name; } ;
typedef  int /*<<< orphan*/  nextpathbuf ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int errno ; 
 int FUNC5 (char*,struct stat*) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 struct dirent* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,size_t) ; 
 char* FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,size_t,int /*<<< orphan*/ ,char*,...) ; 

char *
FUNC13(char *pathname, size_t pathlen)
{
    DIR    *dp;
    struct dirent *d;

    struct stat st_root, st_cur, st_next, st_dotdot;
    char    pathbuf[MAXPATHLEN], nextpathbuf[MAXPATHLEN * 2];
    char   *pathptr, *nextpathptr, *cur_name_add;
    int	   save_errno = 0;

    /* find the inode of root */
    if (FUNC8("/", &st_root) == -1) {
	(void) FUNC12(pathname, pathlen, FUNC0(23, 23, 
			"getcwd: Cannot stat \"/\" (%s)"),
			FUNC9(errno));
	return NULL;
    }
    pathbuf[MAXPATHLEN - 1] = '\0';
    pathptr = &pathbuf[MAXPATHLEN - 1];
    nextpathbuf[MAXPATHLEN - 1] = '\0';
    cur_name_add = nextpathptr = &nextpathbuf[MAXPATHLEN - 1];

    /* find the inode of the current directory */
    if (FUNC5(".", &st_cur) == -1) {
	(void) FUNC12(pathname, pathlen, FUNC0(23, 24,
			 "getcwd: Cannot stat \".\" (%s)"),
			 FUNC9(errno));
	return NULL;
    }
    nextpathptr = FUNC11(nextpathptr, "../", nextpathptr - nextpathbuf);

    /* Descend to root */
    for (;;) {

	/* look if we found root yet */
	if (st_cur.st_ino == st_root.st_ino &&
	    FUNC1(st_cur.st_dev, st_root.st_dev)) {
	    (void) FUNC10(pathname, *pathptr != '/' ? "/" : pathptr, pathlen);
	    pathname[pathlen - 1] = '\0';
	    return pathname;
	}

	/* open the parent directory */
	if (FUNC8(nextpathptr, &st_dotdot) == -1) {
	    (void) FUNC12(pathname, pathlen, FUNC0(23, 25,
			     "getcwd: Cannot stat directory \"%s\" (%s)"),
			     nextpathptr, FUNC9(errno));
	    return NULL;
	}
	if ((dp = FUNC6(nextpathptr)) == NULL) {
	    (void) FUNC12(pathname, pathlen, FUNC0(23, 26,
			     "getcwd: Cannot open directory \"%s\" (%s)"),
			     nextpathptr, FUNC9(errno));
	    return NULL;
	}

	/* look in the parent for the entry with the same inode */
	if (FUNC1(st_dotdot.st_dev, st_cur.st_dev)) {
	    /* Parent has same device. No need to stat every member */
	    for (d = FUNC7(dp); d != NULL; d = FUNC7(dp)) {
#ifdef __clipper__
		if (((unsigned long)d->d_ino & 0xffff) == st_cur.st_ino)
		    break;
#else
		if (d->d_ino == st_cur.st_ino)
		    break;
#endif
	    }
	}
	else {
	    /* 
	     * Parent has a different device. This is a mount point so we 
	     * need to stat every member 
	     */
	    for (d = FUNC7(dp); d != NULL; d = FUNC7(dp)) {
		if (FUNC2(d->d_name) || FUNC3(d->d_name))
		    continue;
		(void)FUNC10(cur_name_add, d->d_name,
		    (size_t) (&nextpathbuf[sizeof(nextpathbuf) - 1] - cur_name_add));
		if (FUNC5(nextpathptr, &st_next) == -1) {
		    /*
		     * We might not be able to stat() some path components
		     * if we are using afs, but this is not an error as
		     * long as we find the one we need; we also save the
		     * first error to report it if we don't finally succeed.
		     */
		    if (save_errno == 0)
			save_errno = errno;
		    continue;
		}
		/* check if we found it yet */
		if (st_next.st_ino == st_cur.st_ino &&
		    FUNC1(st_next.st_dev, st_cur.st_dev)) 
		    break;
	    }
	}
	if (d == NULL) {
	    (void) FUNC12(pathname, pathlen, FUNC0(23, 27,
			     "getcwd: Cannot find \".\" in \"..\" (%s)"),
			     FUNC9(save_errno ? save_errno : ENOENT));
	    FUNC4(dp);
	    return NULL;
	}
	else
	    save_errno = 0;
	st_cur = st_dotdot;
	pathptr = FUNC11(pathptr, d->d_name, pathptr - pathbuf);
	pathptr = FUNC11(pathptr, "/", pathptr - pathbuf);
	nextpathptr = FUNC11(nextpathptr, "../", nextpathptr - nextpathbuf);
	*cur_name_add = '\0';
	FUNC4(dp);
    }
}