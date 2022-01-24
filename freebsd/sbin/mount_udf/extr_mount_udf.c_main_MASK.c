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
typedef  int /*<<< orphan*/  udf_flags ;
struct iovec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int EX_USAGE ; 
 int MAXPATHLEN ; 
 int MNT_RDONLY ; 
 int UDFMNT_KICONV ; 
 int /*<<< orphan*/  FUNC0 (struct iovec**,int*,char*,...) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int,char**,char*) ; 
 int /*<<< orphan*/  mopts ; 
 scalar_t__ FUNC6 (struct iovec*,int,int) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char**,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

int
FUNC10(int argc, char **argv)
{
	char mntpath[MAXPATHLEN];
	char fstype[] = "udf";
	struct iovec *iov;
	char *cs_disk, *cs_local, *dev, *dir;
	int ch, iovlen, mntflags, udf_flags, verbose;

	iovlen = mntflags = udf_flags = verbose = 0;
	cs_disk = cs_local = NULL;
	iov = NULL;
	while ((ch = FUNC5(argc, argv, "o:vC:")) != -1)
		switch (ch) {
		case 'o':
			FUNC4(optarg, mopts, &mntflags, NULL);
			break;
		case 'v':
			verbose++;
			break;
		case 'C':
			if (FUNC8(&cs_disk, &cs_local, optarg) == -1)
				FUNC2(EX_OSERR, "udf_iconv");
			udf_flags |= UDFMNT_KICONV;
			break;
		case '?':
		default:
			FUNC9();
		}
	argc -= optind;
	argv += optind;

	if (argc != 2)
		FUNC9();

	dev = argv[0];
	dir = argv[1];

	/*
	 * Resolve the mountpoint with realpath(3) and remove unnecessary
	 * slashes from the devicename if there are any.
	 */
	if (FUNC1(dir, mntpath) != 0)
		FUNC2(EX_USAGE, "%s", mntpath);
	(void)FUNC7(dev, dev);

	/*
	 * UDF file systems are not writeable.
	 */
	mntflags |= MNT_RDONLY;

	FUNC0(&iov, &iovlen, "fstype", fstype, (size_t)-1);
	FUNC0(&iov, &iovlen, "fspath", mntpath, (size_t)-1);
	FUNC0(&iov, &iovlen, "from", dev, (size_t)-1);
	FUNC0(&iov, &iovlen, "flags", &udf_flags, sizeof(udf_flags));
	if (udf_flags & UDFMNT_KICONV) {
		FUNC0(&iov, &iovlen, "cs_disk", cs_disk, (size_t)-1);
		FUNC0(&iov, &iovlen, "cs_local", cs_local, (size_t)-1);
	}
	if (FUNC6(iov, iovlen, mntflags) < 0)
		FUNC2(1, "%s", dev);
	FUNC3(0);
}