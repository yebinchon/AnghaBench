#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stat {int st_mode; scalar_t__ st_uid; } ;
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_6__ {int argc; TYPE_1__** argv; } ;
struct TYPE_5__ {int len; int /*<<< orphan*/  bp; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_2__ EXCMD ;
typedef  int /*<<< orphan*/  DIR ;
typedef  char CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,size_t) ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,size_t) ; 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  M_SYSERR ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDONLY ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int S_IWGRP ; 
 int S_IWOTH ; 
 int S_IWUSR ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,char*,size_t) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC12 (char*,int,int) ; 
 int /*<<< orphan*/ * FUNC13 (char*) ; 
 int FUNC14 (int,char*,int) ; 
 struct dirent* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,size_t,char*,int) ; 
 int FUNC17 (int /*<<< orphan*/ ,char*,int*) ; 
 scalar_t__ FUNC18 (char*,struct stat*) ; 
 char* FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 char* FUNC22 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC23 (int,char*,int) ; 

__attribute__((used)) static int
FUNC24(
	SCR *sp,
	char *name,
	char *bname)
{
	struct dirent *dp;
	struct stat sb;
	DIR *dirp;
	EXCMD cmd;
	off_t off;
	size_t blen;
	int flags, maxnum, nr, num, nw, rfd, wfd, version;
	char *bp, *estr, *p, *pct, *slash, *t, *wfname, buf[8192];
	CHAR_T *wp;
	size_t wlen;
	size_t nlen;
	char *d = NULL;

	rfd = wfd = -1;
	bp = estr = wfname = NULL;

	/*
	 * Open the current file for reading.  Do this first, so that
	 * we don't exec a shell before the most likely failure point.
	 * If it doesn't exist, it's okay, there's just nothing to back
	 * up.
	 */
	errno = 0;
	if ((rfd = FUNC12(name, O_RDONLY, 0)) < 0) {
		if (errno == ENOENT)
			return (0);
		estr = name;
		goto err;
	}

	/*
	 * If the name starts with an 'N' character, add a version number
	 * to the name.  Strip the leading N from the string passed to the
	 * expansion routines, for no particular reason.  It would be nice
	 * to permit users to put the version number anywhere in the backup
	 * name, but there isn't a special character that we can use in the
	 * name, and giving a new character a special meaning leads to ugly
	 * hacks both here and in the supporting ex routines.
	 *
	 * Shell and file name expand the option's value.
	 */
	FUNC8(sp, &cmd, 0, 0, 0, 0, 0);
	if (bname[0] == 'N') {
		version = 1;
		++bname;
	} else
		version = 0;
	FUNC0(sp, bname, FUNC20(bname), wp, wlen);
	if ((wp = FUNC22(sp, wp, wlen)) == NULL)
		return (1);
	if (FUNC5(sp, &cmd, wp, wlen)) {
		FUNC9(wp);
		return (1);
	}
	FUNC9(wp);

	/*
	 *  0 args: impossible.
	 *  1 args: use it.
	 * >1 args: object, too many args.
	 */
	if (cmd.argc != 1) {
		FUNC11(sp, M_ERR, bname,
		    "258|%s expanded into too many file names");
		(void)FUNC6(rfd);
		return (1);
	}

	/*
	 * If appending a version number, read through the directory, looking
	 * for file names that match the name followed by a number.  Make all
	 * of the other % characters in name literal, so the user doesn't get
	 * surprised and sscanf doesn't drop core indirecting through pointers
	 * that don't exist.  If any such files are found, increment its number
	 * by one.
	 */
	if (version) {
		FUNC2(sp, bp, blen, cmd.argv[0]->len * 2 + 50);
		FUNC3(sp, cmd.argv[0]->bp, cmd.argv[0]->len + 1,
			 p, nlen); 
		d = FUNC19(p);
		p = d;
		for (t = bp, slash = NULL;
		     p[0] != '\0'; *t++ = *p++)
			if (p[0] == '%') {
				if (p[1] != '%')
					*t++ = '%';
			} else if (p[0] == '/')
				slash = t;
		pct = t;
		*t++ = '%';
		*t++ = 'd';
		*t = '\0';

		if (slash == NULL) {
			dirp = FUNC13(".");
			p = bp;
		} else {
			*slash = '\0';
			dirp = FUNC13(bp);
			*slash = '/';
			p = slash + 1;
		}
		if (dirp == NULL) {
			FUNC3(sp, cmd.argv[0]->bp, cmd.argv[0]->len + 1,
				estr, nlen);
			goto err;
		}

		for (maxnum = 0; (dp = FUNC15(dirp)) != NULL;)
			if (FUNC17(dp->d_name, p, &num) == 1 && num > maxnum)
				maxnum = num;
		(void)FUNC7(dirp);

		/* Format the backup file name. */
		(void)FUNC16(pct, blen - (pct - bp), "%d", maxnum + 1);
		wfname = bp;
	} else {
		bp = NULL;
		FUNC3(sp, cmd.argv[0]->bp, cmd.argv[0]->len + 1,
			wfname, nlen);
	}
	
	/* Open the backup file, avoiding lurkers. */
	if (FUNC18(wfname, &sb) == 0) {
		if (!FUNC4(sb.st_mode)) {
			FUNC11(sp, M_ERR, bname,
			    "259|%s: not a regular file");
			goto err;
		}
		if (sb.st_uid != FUNC10()) {
			FUNC11(sp, M_ERR, bname, "260|%s: not owned by you");
			goto err;
		}
		if (sb.st_mode & (S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH)) {
			FUNC11(sp, M_ERR, bname,
			   "261|%s: accessible by a user other than the owner");
			goto err;
		}
		flags = O_TRUNC;
	} else
		flags = O_CREAT | O_EXCL;
	if ((wfd = FUNC12(wfname, flags | O_WRONLY, S_IRUSR | S_IWUSR)) < 0) {
		estr = bname;
		goto err;
	}

	/* Copy the file's current contents to its backup value. */
	while ((nr = FUNC14(rfd, buf, sizeof(buf))) > 0)
		for (off = 0; nr != 0; nr -= nw, off += nw)
			if ((nw = FUNC23(wfd, buf + off, nr)) < 0) {
				estr = wfname;
				goto err;
			}
	if (nr < 0) {
		estr = name;
		goto err;
	}

	if (FUNC6(rfd)) {
		estr = name;
		goto err;
	}
	if (FUNC6(wfd)) {
		estr = wfname;
		goto err;
	}
	if (bp != NULL)
		FUNC1(sp, bp, blen);
	return (0);

alloc_err:
err:	if (rfd != -1)
		(void)FUNC6(rfd);
	if (wfd != -1) {
		(void)FUNC21(wfname);
		(void)FUNC6(wfd);
	}
	if (estr)
		FUNC11(sp, M_SYSERR, estr, "%s");
	if (d != NULL)
		FUNC9(d);
	if (bp != NULL)
		FUNC1(sp, bp, blen);
	return (1);
}