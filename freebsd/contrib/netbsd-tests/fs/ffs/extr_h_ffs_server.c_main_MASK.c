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
 int /*<<< orphan*/  MNT_LOG ; 
 int /*<<< orphan*/  MOUNT_FFS ; 
 int /*<<< orphan*/  RUMP_DAEMONIZE_SUCCESS ; 
 int /*<<< orphan*/  RUMP_ETFS_BLK ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int background ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char**,char*) ; 
 scalar_t__ optind ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ufs_args*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigreboot ; 
 int /*<<< orphan*/  sigsem ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 () ; 

int 
FUNC17(int argc, char **argv)
{
	int error;
	struct ufs_args uargs;
	const char *filename;
	const char *serverurl;
	int log = 0;
	int ch;

	while ((ch = FUNC3(argc, argv, "bl")) != -1) {
		switch(ch) {
		case 'b':
			background = 1;
			break;
		case 'l':
			log = 1;
			break;
		default:
			FUNC16();
		}
	}
	argc -= optind;
	argv += optind;

	if (argc != 2)
		FUNC16();

	filename = argv[0];
	serverurl = argv[1];

	if (background) {
		error = FUNC4();
		if (error)
			FUNC2(1, "rump daemonize: %s", FUNC15(error));
	}

	error = FUNC6();
	if (error)
		FUNC1("rump init failed", error);

	if (FUNC9(FSTEST_MNTNAME, 0777) == -1)
		FUNC1("mount point create", errno);
	FUNC8("/diskdev", filename, RUMP_ETFS_BLK);
	uargs.fspec = FUNC0("/diskdev");
	if (FUNC10(MOUNT_FFS, FSTEST_MNTNAME, (log) ? MNT_LOG : 0,
	    &uargs, sizeof(uargs)) == -1)
		FUNC1("mount ffs", errno);

	error = FUNC7(serverurl);
	if (error)
		FUNC1("rump server init failed", error);
	if (background)
		FUNC5(RUMP_DAEMONIZE_SUCCESS);

	FUNC12(&sigsem, 0, 0);
	FUNC14(SIGTERM, sigreboot);
	FUNC14(SIGINT, sigreboot);
	FUNC13(&sigsem);

	FUNC11(0, NULL);
	/*NOTREACHED*/
	return 0;
}