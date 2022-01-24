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

/* Variables and functions */
 int /*<<< orphan*/  FSTEST_MNTNAME ; 
 int MNT_LOG ; 
 int MNT_UPDATE ; 
 int /*<<< orphan*/  MOUNT_FFS ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 int /*<<< orphan*/  RUMP_RB_NOSYNC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ufs_args*,int) ; 
 int FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 unsigned int FUNC10 (char const*) ; 

__attribute__((used)) static int
FUNC11(const char *testopts)
{
	static char buf[512];
	int fd;
	int remount = 0;
	int unlnk = 0;
	int log = 0;
	unsigned int i;

	for (i =0; testopts && i < FUNC10(testopts); i++) {
		switch(testopts[i]) {
		case 'L':
			log++;
			break;
		case 'R':
			remount++;
			break;
		case 'U':
			unlnk++;
			break;
		default:
			FUNC2(1, "test4: unknown option %c", testopts[i]);
		}
	}
	if (remount) {
		struct ufs_args uargs;
		uargs.fspec = FUNC0("/diskdev");
		/* remount the fs read/write */
		if (FUNC4(MOUNT_FFS, FSTEST_MNTNAME,
		    MNT_UPDATE | (log ? MNT_LOG : 0),
		    &uargs, sizeof(uargs)) == -1)
			FUNC1(1, "mount ffs rw %s", FSTEST_MNTNAME);
	}

	if (unlnk) {
		/*
		 * open and unlink a file
		 */

		fd = FUNC5("unlinked_file",
		    O_EXCL| O_CREAT | O_RDWR, 0644);
		if (fd < 0)
			FUNC1(1, "create %s", "unlinked_file");
		FUNC9(buf, "test unlinked_file");
		FUNC8(fd, buf, FUNC10(buf));
		if (FUNC7("unlinked_file") == -1)
			FUNC1(1, "unlink unlinked_file");
		if (FUNC3(fd) == -1) 
			FUNC1(1, "fsync unlinked_file");
		FUNC6(RUMP_RB_NOSYNC, NULL);
		FUNC2(1, "reboot failed");
		return 1;
	}
	return 0;
}