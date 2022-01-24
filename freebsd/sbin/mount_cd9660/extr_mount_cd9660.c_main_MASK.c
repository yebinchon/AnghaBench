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
struct iovec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int MAXPATHLEN ; 
 int MNT_RDONLY ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iovec**,int*,char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct iovec**,int*,char*,char*,int) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int,char**,char*) ; 
 int /*<<< orphan*/  mopts ; 
 scalar_t__ FUNC9 (struct iovec*,int,int) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int FUNC12 (struct iovec**,int*,char*) ; 
 char* FUNC13 (char*,char) ; 
 int /*<<< orphan*/  FUNC14 () ; 

int
FUNC15(int argc, char **argv)
{
	struct iovec *iov;
	int iovlen;
	int ch, mntflags;
	char *dev, *dir, *p, *val, mntpath[MAXPATHLEN];
	int verbose;
	int ssector;		/* starting sector, 0 for 1st session */
	char fstype[] = "cd9660";

	iov = NULL;
	iovlen = 0;
	mntflags = verbose = 0;
	ssector = -1;

	while ((ch = FUNC8(argc, argv, "begjo:rs:vC:")) != -1)
		switch (ch) {
		case 'b':
			FUNC1(&iov, &iovlen, "brokenjoliet", NULL, (size_t)-1);
			break;
		case 'e':
			FUNC1(&iov, &iovlen, "extatt", NULL, (size_t)-1);
			break;
		case 'g':
			FUNC1(&iov, &iovlen, "gens", NULL, (size_t)-1);
			break;
		case 'j':
			FUNC1(&iov, &iovlen, "nojoliet", NULL, (size_t)-1);
			break;
		case 'o':
			FUNC7(optarg, mopts, &mntflags, NULL);
			p = FUNC13(optarg, '=');
			val = NULL;
			if (p != NULL) {
				*p = '\0';
				val = p + 1;
			}
			FUNC1(&iov, &iovlen, optarg, val, (size_t)-1);
			break;
		case 'r':
			FUNC1(&iov, &iovlen, "norrip", NULL, (size_t)-1);
			break;
		case 's':
			ssector = FUNC0(optarg);
			break;
		case 'v':
			verbose++;
			break;
		case 'C':
			if (FUNC12(&iov, &iovlen, optarg) == -1)
				FUNC4(EX_OSERR, "cd9660_iconv");
			FUNC1(&iov, &iovlen, "kiconv", NULL, (size_t)-1);
			break;
		case '?':
		default:
			FUNC14();
		}
	argc -= optind;
	argv += optind;

	if (argc != 2)
		FUNC14();

	dev = argv[0];
	dir = argv[1];

	/*
	 * Resolve the mountpoint with realpath(3) and remove unnecessary
	 * slashes from the devicename if there are any.
	 */
	if (FUNC3(dir, mntpath) != 0)
		FUNC4(1, "%s", mntpath);
	(void)FUNC11(dev, dev);

	if (ssector == -1) {
		/*
		 * The start of the session has not been specified on
		 * the command line.  If we can successfully read the
		 * TOC of a CD-ROM, use the last data track we find.
		 * Otherwise, just use 0, in order to mount the very
		 * first session.  This is compatible with the
		 * historic behaviour of mount_cd9660(8).  If the user
		 * has specified -s <ssector> above, we don't get here
		 * and leave the user's will.
		 */
		if ((ssector = FUNC6(dev)) == -1) {
			if (verbose)
				FUNC10("could not determine starting sector, "
				       "using very first session\n");
			ssector = 0;
		} else if (verbose)
			FUNC10("using starting sector %d\n", ssector);
	}
	mntflags |= MNT_RDONLY;
	FUNC1(&iov, &iovlen, "fstype", fstype, (size_t)-1);
	FUNC1(&iov, &iovlen, "fspath", mntpath, (size_t)-1);
	FUNC1(&iov, &iovlen, "from", dev, (size_t)-1);
	FUNC2(&iov, &iovlen, "ssector", "%d", ssector);

	if (FUNC9(iov, iovlen, mntflags) < 0)
		FUNC4(1, "%s", dev);
	FUNC5(0);
}