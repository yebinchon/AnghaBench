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
typedef  scalar_t__ uid_t ;
typedef  int /*<<< orphan*/  u_int ;
struct timespec {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct entry {int e_flags; } ;
typedef  int mode_t ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_2__ {char* name; int extsize; scalar_t__ uid; int mode; scalar_t__ rdev; int /*<<< orphan*/  ino; int /*<<< orphan*/  file_flags; int /*<<< orphan*/  gid; int /*<<< orphan*/  birthtime_nsec; int /*<<< orphan*/  birthtime_sec; int /*<<< orphan*/  atime_nsec; int /*<<< orphan*/  atime_sec; int /*<<< orphan*/  mtime_nsec; int /*<<< orphan*/  mtime_sec; int /*<<< orphan*/  action; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int /*<<< orphan*/  AT_SYMLINK_NOFOLLOW ; 
 int EXTRACT ; 
 int FAIL ; 
 int GOOD ; 
#define  IFBLK 134 
#define  IFCHR 133 
#define  IFDIR 132 
#define  IFIFO 131 
#define  IFLNK 130 
 int IFMT ; 
#define  IFREG 129 
#define  IFSOCK 128 
 int /*<<< orphan*/  Nflag ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SXA_FD ; 
 int /*<<< orphan*/  SXA_FILE ; 
 int /*<<< orphan*/  SXA_LINK ; 
 int /*<<< orphan*/  SYMLINK ; 
 int /*<<< orphan*/  USING ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__ curfile ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int,struct timespec*) ; 
 int FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC15 (char*,char*,int /*<<< orphan*/ ) ; 
 char* lnkbuf ; 
 struct entry* FUNC16 (char*) ; 
 int /*<<< orphan*/  mflag ; 
 int /*<<< orphan*/  FUNC17 (char*,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,int) ; 
 int ofile ; 
 int FUNC19 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  pathlen ; 
 int /*<<< orphan*/  FUNC21 (int,char*,char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uflag ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char*,struct timespec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  xtrattr ; 
 int /*<<< orphan*/  xtrfile ; 
 int /*<<< orphan*/  xtrlnkfile ; 
 int /*<<< orphan*/  xtrlnkskip ; 
 int /*<<< orphan*/  xtrnull ; 
 int /*<<< orphan*/  xtrskip ; 

int
FUNC28(char *name)
{
	u_int flags;
	uid_t uid;
	gid_t gid;
	mode_t mode;
	int extsize;
	struct timespec mtimep[2], ctimep[2];
	struct entry *ep;
	char *buf;

	curfile.name = name;
	curfile.action = USING;
	mtimep[0].tv_sec = curfile.atime_sec;
	mtimep[0].tv_nsec = curfile.atime_nsec;
	mtimep[1].tv_sec = curfile.mtime_sec;
	mtimep[1].tv_nsec = curfile.mtime_nsec;
	ctimep[0].tv_sec = curfile.atime_sec;
	ctimep[0].tv_nsec = curfile.atime_nsec;
	ctimep[1].tv_sec = curfile.birthtime_sec;
	ctimep[1].tv_nsec = curfile.birthtime_nsec;
	extsize = curfile.extsize;
	uid = FUNC11();
	if (uid == 0)
		uid = curfile.uid;
	gid = curfile.gid;
	mode = curfile.mode;
	flags = curfile.file_flags;
	switch (mode & IFMT) {

	default:
		FUNC7(stderr, "%s: unknown file mode 0%o\n", name, mode);
		FUNC23();
		return (FAIL);

	case IFSOCK:
		FUNC27(stdout, "skipped socket %s\n", name);
		FUNC23();
		return (GOOD);

	case IFDIR:
		if (mflag) {
			ep = FUNC16(name);
			if (ep == NULL || ep->e_flags & EXTRACT)
				FUNC20("unextracted directory %s\n", name);
			FUNC23();
			return (GOOD);
		}
		FUNC27(stdout, "extract file %s\n", name);
		return (FUNC9(name, curfile.ino));

	case IFLNK:
		lnkbuf[0] = '\0';
		pathlen = 0;
		buf = FUNC22(extsize);
		FUNC10(xtrlnkfile, xtrattr, xtrlnkskip);
		if (pathlen == 0) {
			FUNC27(stdout,
			    "%s: zero length symbolic link (ignored)\n", name);
			return (GOOD);
		}
		if (FUNC15(lnkbuf, name, SYMLINK) == GOOD) {
			if (extsize > 0)
				FUNC21(-1, name, buf, extsize, SXA_LINK);
			(void) FUNC14(name, uid, gid);
			(void) FUNC13(name, mode);
			(void) FUNC26(AT_FDCWD, name, ctimep,
			    AT_SYMLINK_NOFOLLOW);
			(void) FUNC26(AT_FDCWD, name, mtimep,
			    AT_SYMLINK_NOFOLLOW);
			(void) FUNC12(name, flags);
			return (GOOD);
		}
		return (FAIL);

	case IFIFO:
		FUNC27(stdout, "extract fifo %s\n", name);
		if (Nflag) {
			FUNC23();
			return (GOOD);
		}
		if (uflag)
			(void) FUNC25(name);
		if (FUNC17(name, 0600) < 0) {
			FUNC7(stderr, "%s: cannot create fifo: %s\n",
			    name, FUNC24(errno));
			FUNC23();
			return (FAIL);
		}
		if (extsize == 0) {
			FUNC23();
		} else {
			buf = FUNC22(extsize);
			FUNC10(xtrnull, xtrattr, xtrnull);
			FUNC21(-1, name, buf, extsize, SXA_FILE);
		}
		(void) FUNC2(name, uid, gid);
		(void) FUNC1(name, mode);
		(void) FUNC26(AT_FDCWD, name, ctimep, 0);
		(void) FUNC26(AT_FDCWD, name, mtimep, 0);
		(void) FUNC0(name, flags);
		return (GOOD);

	case IFCHR:
	case IFBLK:
		FUNC27(stdout, "extract special file %s\n", name);
		if (Nflag) {
			FUNC23();
			return (GOOD);
		}
		if (uflag)
			(void) FUNC25(name);
		if (FUNC18(name, (mode & (IFCHR | IFBLK)) | 0600,
		    (int)curfile.rdev) < 0) {
			FUNC7(stderr, "%s: cannot create special file: %s\n",
			    name, FUNC24(errno));
			FUNC23();
			return (FAIL);
		}
		if (extsize == 0) {
			FUNC23();
		} else {
			buf = FUNC22(extsize);
			FUNC10(xtrnull, xtrattr, xtrnull);
			FUNC21(-1, name, buf, extsize, SXA_FILE);
		}
		(void) FUNC2(name, uid, gid);
		(void) FUNC1(name, mode);
		(void) FUNC26(AT_FDCWD, name, ctimep, 0);
		(void) FUNC26(AT_FDCWD, name, mtimep, 0);
		(void) FUNC0(name, flags);
		return (GOOD);

	case IFREG:
		FUNC27(stdout, "extract file %s\n", name);
		if (Nflag) {
			FUNC23();
			return (GOOD);
		}
		if (uflag)
			(void) FUNC25(name);
		if ((ofile = FUNC19(name, O_WRONLY | O_CREAT | O_TRUNC,
		    0600)) < 0) {
			FUNC7(stderr, "%s: cannot create file: %s\n",
			    name, FUNC24(errno));
			FUNC23();
			return (FAIL);
		}
		buf = FUNC22(extsize);
		FUNC10(xtrfile, xtrattr, xtrskip);
		if (extsize > 0)
			FUNC21(ofile, name, buf, extsize, SXA_FD);
		(void) FUNC6(ofile, uid, gid);
		(void) FUNC5(ofile, mode);
		(void) FUNC8(ofile, ctimep);
		(void) FUNC8(ofile, mtimep);
		(void) FUNC4(ofile, flags);
		(void) FUNC3(ofile);
		return (GOOD);
	}
	/* NOTREACHED */
}