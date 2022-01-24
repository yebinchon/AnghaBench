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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FSTEST_IMGNAME ; 
 int /*<<< orphan*/  FSTEST_MNTNAME ; 
 int /*<<< orphan*/  MNT_LOG ; 
 int /*<<< orphan*/  MOUNT_FFS ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  RUMP_ETFS_BLK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (int,int,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ufs_args*,int) ; 
 int FUNC15 (char*,int,int) ; 
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
	
	FUNC18(buf, sizeof(buf), "newfs -q user -q group -F -s 4000 -n %d "
	    "%s %s", (n + 3),  newfs_opts, FSTEST_IMGNAME);
        if (FUNC21(buf) == -1)
                FUNC6("cannot create file system");

	FUNC7();
	if (FUNC13(FSTEST_MNTNAME, 0777) == -1)
		FUNC6("mount point create");

	FUNC8("/diskdev", FSTEST_IMGNAME, RUMP_ETFS_BLK);

	uargs.fspec = FUNC3("/diskdev");
	if (FUNC14(MOUNT_FFS, FSTEST_MNTNAME, (log) ? MNT_LOG : 0,
	    &uargs, sizeof(uargs)) == -1)
		FUNC6("mount ffs %s", FSTEST_MNTNAME);

	FUNC4();
	FUNC0();
	FUNC2(FUNC10(".", 0, 0));
	for (i = 0 ; i < n; i++) {
		FUNC19(buf, "file%d", i);
		FUNC2(fd = FUNC15(buf, O_CREAT | O_RDWR, 0755));
		FUNC19(buf, "test file no %d", i);
		FUNC2(FUNC17(fd, buf, FUNC20(buf)));
		FUNC2(FUNC12(fd, i, i+80000));
		FUNC11(fd);
	}
	FUNC1();
	if (FUNC16(FSTEST_MNTNAME, 0) != 0) {
		FUNC9(FSTEST_MNTNAME, 1);
		FUNC6("unmount failed");
	}
	FUNC18(buf, 1024, "fsck_ffs -fn -F %s",  FSTEST_IMGNAME);
	res = FUNC21(buf);
	if (res != 0)
		FUNC5("fsck returned %d", res);
}