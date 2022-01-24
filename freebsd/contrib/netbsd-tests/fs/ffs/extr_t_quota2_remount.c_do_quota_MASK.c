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
typedef  int /*<<< orphan*/  uargs ;
struct ufs_args {int /*<<< orphan*/  fspec; } ;
struct statvfs {int f_flag; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FSTEST_IMGNAME ; 
 int /*<<< orphan*/  FSTEST_MNTNAME ; 
 int MNT_LOG ; 
 int MNT_RDONLY ; 
 int MNT_UPDATE ; 
 int /*<<< orphan*/  MOUNT_FFS ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  RUMP_ETFS_BLK ; 
 int ST_QUOTA ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int,int,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ufs_args*,int) ; 
 int FUNC14 (char*,int,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,struct statvfs*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int FUNC21 (char*) ; 

__attribute__((used)) static void
FUNC22(const atf_tc_t *tc, int n, const char *newfs_opts, int log)
{
	int i;
	char buf[1024];
	int res;
	int fd;
	struct ufs_args uargs;
	struct statvfs fst;
	
	FUNC18(buf, sizeof(buf), "newfs -q user -q group -F -s 4000 -n %d "
	    "%s %s", (n + 3),  newfs_opts, FSTEST_IMGNAME);
        if (FUNC21(buf) == -1)
                FUNC5("cannot create file system");

	FUNC6();
	if (FUNC12(FSTEST_MNTNAME, 0777) == -1)
		FUNC5("mount point create");

	FUNC7("/diskdev", FSTEST_IMGNAME, RUMP_ETFS_BLK);

	uargs.fspec = FUNC3("/diskdev");

	/* read-only doens't have quota enabled */
	if (FUNC13(MOUNT_FFS, FSTEST_MNTNAME, MNT_RDONLY,
	    &uargs, sizeof(uargs)) == -1)
		FUNC5("mount ffs ro %s", FSTEST_MNTNAME);

	if (FUNC15(FSTEST_MNTNAME, &fst, 0) != 0)
		FUNC5("statbfs %s (1)", FSTEST_MNTNAME);

	if ((fst.f_flag & ST_QUOTA) != 0)
		FUNC4("R/O filesystem has quota");

	/* updating to read-write enables quota */
	if (FUNC13(MOUNT_FFS, FSTEST_MNTNAME,
	    MNT_UPDATE | (log ? MNT_LOG : 0), &uargs, sizeof(uargs)) == -1)
		FUNC5("mount ffs rw %s", FSTEST_MNTNAME);
	
	if (FUNC15(FSTEST_MNTNAME, &fst, 0) != 0)
		FUNC5("statbfs %s (2)", FSTEST_MNTNAME);

	if ((fst.f_flag & ST_QUOTA) == 0)
		FUNC4("R/W filesystem has no quota");

	/* we can update a second time  */
	if (FUNC13(MOUNT_FFS, FSTEST_MNTNAME,
	    MNT_UPDATE | (log ? MNT_LOG : 0), &uargs, sizeof(uargs)) == -1)
		FUNC5("mount ffs rw(2) %s", FSTEST_MNTNAME);
	
	if (FUNC15(FSTEST_MNTNAME, &fst, 0) != 0)
		FUNC5("statbfs %s (3)", FSTEST_MNTNAME);

	if ((fst.f_flag & ST_QUOTA) == 0)
		FUNC4("R/W filesystem has no quota");

	/* create some files so fsck has something to check */
	FUNC0();
	FUNC2(FUNC9(".", 0, 0));
	for (i = 0 ; i < n; i++) {
		FUNC19(buf, "file%d", i);
		FUNC2(fd = FUNC14(buf, O_CREAT | O_RDWR, 0755));
		FUNC19(buf, "test file no %d", i);
		FUNC2(FUNC17(fd, buf, FUNC20(buf)));
		FUNC2(FUNC11(fd, i, i+80000));
		FUNC10(fd);
	}
	FUNC1();
	if (FUNC16(FSTEST_MNTNAME, 0) != 0) {
		FUNC8(FSTEST_MNTNAME, 1);
		FUNC5("unmount failed");
	}
	FUNC18(buf, 1024, "fsck_ffs -fn -F %s",  FSTEST_IMGNAME);
	res = FUNC21(buf);
	if (res != 0)
		FUNC4("fsck returned %d", res);
}