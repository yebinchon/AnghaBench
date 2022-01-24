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
struct statfs {char* f_mntonname; int /*<<< orphan*/  f_flags; } ;
struct stat {int st_mode; scalar_t__ st_uid; int st_flags; } ;
struct iovec {int dummy; } ;
struct group {int /*<<< orphan*/  gr_gid; } ;
typedef  int /*<<< orphan*/  errmsg ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 int SF_SNAPSHOT ; 
 int S_IRGRP ; 
 int S_IRUSR ; 
 int S_ISTXT ; 
 int /*<<< orphan*/  W_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iovec**,int*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,struct stat*) ; 
 struct group* FUNC8 (char*) ; 
 scalar_t__ FUNC9 () ; 
 int FUNC10 (char*,struct stat*) ; 
 int FUNC11 (char*,struct statfs*) ; 
 scalar_t__ FUNC12 (struct iovec*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char*,struct statfs*) ; 
 char* FUNC15 (char*,char) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 int FUNC17 (char*) ; 
 char* FUNC18 (char*,char) ; 
 int /*<<< orphan*/  FUNC19 () ; 

int
FUNC20(int argc, char **argv)
{
	char errmsg[255], path[PATH_MAX];
	char *cp, *snapname;
	struct statfs stfsbuf;
	struct group *grp;
	struct stat stbuf;
	struct iovec *iov;
	int fd, iovlen;

	if (argc == 2)
		snapname = argv[1];
	else if (argc == 3)
		snapname = argv[2];	/* Old usage. */
	else
		FUNC19();

	/*
	 * Check that the user running this program has permission
	 * to create and remove a snapshot file from the directory
	 * in which they have requested to have it made. If the 
	 * directory is sticky and not owned by the user, then they
	 * will not be able to remove the snapshot when they are
	 * done with it.
	 */
	if (FUNC17(snapname) >= PATH_MAX)
		FUNC3(1, "pathname too long %s", snapname);
	cp = FUNC18(snapname, '/');
	if (cp == NULL) {
		FUNC16(path, ".", PATH_MAX);
	} else if (cp == snapname) {
		FUNC16(path, "/", PATH_MAX);
	} else {
		FUNC16(path, snapname, cp - snapname + 1);
	}
	if (FUNC14(path, &stfsbuf) < 0)
		FUNC2(1, "%s", path);
	switch (FUNC10(path, &stbuf)) {
	case -1:
		FUNC2(1, "%s", path);
	case 0:
		FUNC3(1, "%s: Not a directory", path);
	default:
		break;
	}
	if (FUNC0(path, W_OK) < 0)
		FUNC2(1, "Lack write permission in %s", path);
	if ((stbuf.st_mode & S_ISTXT) && stbuf.st_uid != FUNC9())
		FUNC3(1, "Lack write permission in %s: Sticky bit set", path);

	/*
	 * Work around an issue when mksnap_ffs is started in chroot'ed
	 * environment and f_mntonname contains absolute path within
	 * real root.
	 */
	for (cp = stfsbuf.f_mntonname; FUNC11(cp, &stfsbuf) != 1;
	    cp = FUNC15(cp + 1, '/')) {
		if (cp[0] == '\0')
			FUNC3(1, "%s: Not a mount point", stfsbuf.f_mntonname);
	}
	if (cp != stfsbuf.f_mntonname)
		FUNC16(stfsbuf.f_mntonname, cp, sizeof(stfsbuf.f_mntonname));

	/*
	 * Having verified access to the directory in which the
	 * snapshot is to be built, proceed with creating it.
	 */
	if ((grp = FUNC8("operator")) == NULL)
		FUNC3(1, "Cannot retrieve operator gid");

	iov = NULL;
	iovlen = 0;
	FUNC1(&iov, &iovlen, "fstype", "ffs", 4);
	FUNC1(&iov, &iovlen, "from", snapname, (size_t)-1);
	FUNC1(&iov, &iovlen, "fspath", stfsbuf.f_mntonname, (size_t)-1);
	FUNC1(&iov, &iovlen, "errmsg", errmsg, sizeof(errmsg));
	FUNC1(&iov, &iovlen, "update", NULL, 0);
	FUNC1(&iov, &iovlen, "snapshot", NULL, 0);

	*errmsg = '\0';
	if (FUNC12(iov, iovlen, stfsbuf.f_flags) < 0) {
		errmsg[sizeof(errmsg) - 1] = '\0';
		FUNC2(1, "Cannot create snapshot %s%s%s", snapname,
		    *errmsg != '\0' ? ": " : "", errmsg);
	}
	if ((fd = FUNC13(snapname, O_RDONLY)) < 0)
		FUNC2(1, "Cannot open %s", snapname);
	if (FUNC7(fd, &stbuf) != 0)
		FUNC2(1, "Cannot stat %s", snapname);
	if ((stbuf.st_flags & SF_SNAPSHOT) == 0)
		FUNC3(1, "File %s is not a snapshot", snapname);
	if (FUNC6(fd, -1, grp->gr_gid) != 0)
		FUNC2(1, "Cannot chown %s", snapname);
	if (FUNC5(fd, S_IRUSR | S_IRGRP) != 0)
		FUNC2(1, "Cannot chmod %s", snapname);

	FUNC4(EXIT_SUCCESS);
}