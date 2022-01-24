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
typedef  size_t uid_t ;
struct stat {size_t st_uid; size_t st_gid; size_t st_mode; } ;
struct iovec {int dummy; } ;
typedef  size_t mode_t ;
typedef  size_t gid_t ;
typedef  int /*<<< orphan*/  errmsg ;

/* Variables and functions */
 int EX_CONFIG ; 
 int EX_NOINPUT ; 
 int EX_OSERR ; 
 int EX_USAGE ; 
 int /*<<< orphan*/  KICONV_VENDOR_MICSFT ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int MAXPATHLEN ; 
 size_t S_IRWXG ; 
 size_t S_IRWXO ; 
 size_t S_IRWXU ; 
 size_t FUNC0 (char*) ; 
 size_t FUNC1 (char*) ; 
 size_t FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct iovec**,int*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iovec**,int*,char*,char const*,...) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int,char**,char*) ; 
 char* FUNC10 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct iovec*,int,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int FUNC13 (struct iovec**,int*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int FUNC15 (char*,struct stat*) ; 
 char* FUNC16 (char*,char) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 char* FUNC18 (char const*) ; 
 int /*<<< orphan*/  FUNC19 () ; 

int
FUNC20(int argc, char **argv)
{
	struct iovec *iov = NULL;
	int iovlen = 0;
	struct stat sb;
	int c, set_gid, set_uid, set_mask, set_dirmask;
	char *dev, *dir, mntpath[MAXPATHLEN], *csp;
	char fstype[] = "msdosfs";
	char errmsg[255] = {0};
	char *cs_dos = NULL;
	char *cs_local = NULL;
	mode_t mask = 0, dirmask = 0;
	uid_t uid = 0;
	gid_t gid = 0;

	set_gid = set_uid = set_mask = set_dirmask = 0;

	while ((c = FUNC9(argc, argv, "sl9u:g:m:M:o:L:D:W:")) != -1) {
		switch (c) {
		case 's':
			FUNC3(&iov, &iovlen, "shortnames", NULL, (size_t)-1);
			break;
		case 'l':
			FUNC3(&iov, &iovlen, "longnames", NULL, (size_t)-1);
			break;
		case '9':
			FUNC4(&iov, &iovlen, "nowin95", "", (size_t)-1);
			break;
		case 'u':
			uid = FUNC2(optarg);
			set_uid = 1;
			break;
		case 'g':
			gid = FUNC0(optarg);
			set_gid = 1;
			break;
		case 'm':
			mask = FUNC1(optarg);
			set_mask = 1;
			break;
		case 'M':
			dirmask = FUNC1(optarg);
			set_dirmask = 1;
			break;
		case 'L': {
			const char *quirk = NULL;
			if (FUNC14(LC_CTYPE, optarg) == NULL)
				FUNC6(EX_CONFIG, "%s", optarg);
			csp = FUNC16(optarg,'.');
			if (!csp)
				FUNC6(EX_CONFIG, "%s", optarg);
			quirk = FUNC10(csp + 1, KICONV_VENDOR_MICSFT);
			FUNC4(&iov, &iovlen, "cs_local", quirk);
			cs_local = FUNC18(quirk);
			}
			break;
		case 'D':
			cs_dos = FUNC18(optarg);
			FUNC4(&iov, &iovlen, "cs_dos", cs_dos, (size_t)-1);
			break;
		case 'o': {
			char *p = NULL;
			char *val = FUNC18("");
			p = FUNC16(optarg, '=');
			if (p != NULL) {
				FUNC8(val);
				*p = '\0';
				val = p + 1;
			}
			FUNC3(&iov, &iovlen, optarg, val, (size_t)-1);
			}
			break;
		case 'W':
			if (FUNC17(optarg, "iso22dos") == 0) {
				cs_local = FUNC18("ISO8859-2");
				cs_dos = FUNC18("CP852");
			} else if (FUNC17(optarg, "iso72dos") == 0) {
				cs_local = FUNC18("ISO8859-7");
				cs_dos = FUNC18("CP737");
			} else if (FUNC17(optarg, "koi2dos") == 0) {
				cs_local = FUNC18("KOI8-R");
				cs_dos = FUNC18("CP866");
			} else if (FUNC17(optarg, "koi8u2dos") == 0) {
				cs_local = FUNC18("KOI8-U");
				cs_dos = FUNC18("CP866");
			} else {
				FUNC6(EX_NOINPUT, "%s", optarg);
			}
			FUNC3(&iov, &iovlen, "cs_local", cs_local, (size_t)-1);
			FUNC3(&iov, &iovlen, "cs_dos", cs_dos, (size_t)-1);
			break;
		case '?':
		default:
			FUNC19();
			break;
		}
	}

	if (optind + 2 != argc)
		FUNC19();

	if (set_mask && !set_dirmask) {
		dirmask = mask;
		set_dirmask = 1;
	}
	else if (set_dirmask && !set_mask) {
		mask = dirmask;
		set_mask = 1;
	}

	dev = argv[optind];
	dir = argv[optind + 1];

	if (cs_local != NULL) {
		if (FUNC13(&iov, &iovlen, cs_local, cs_dos) == -1)
			FUNC6(EX_OSERR, "msdosfs_iconv");
		FUNC4(&iov, &iovlen, "kiconv", "");
	} else if (cs_dos != NULL) {
		FUNC4(&iov, &iovlen, "cs_local", "ISO8859-1");
		if (FUNC13(&iov, &iovlen, "ISO8859-1", cs_dos) == -1)
			FUNC6(EX_OSERR, "msdosfs_iconv");
		FUNC4(&iov, &iovlen, "kiconv", "");
	}

	/*
	 * Resolve the mountpoint with realpath(3) and remove unnecessary
	 * slashes from the devicename if there are any.
	 */
	if (FUNC5(dir, mntpath) != 0)
		FUNC6(EX_USAGE, "%s", mntpath);
	(void)FUNC12(dev, dev);

	if (!set_gid || !set_uid || !set_mask) {
		if (FUNC15(mntpath, &sb) == -1)
			FUNC6(EX_OSERR, "stat %s", mntpath);

		if (!set_uid)
			uid = sb.st_uid;
		if (!set_gid)
			gid = sb.st_gid;
		if (!set_mask)
			mask = dirmask =
				sb.st_mode & (S_IRWXU | S_IRWXG | S_IRWXO);
	}

	FUNC3(&iov, &iovlen, "fstype", fstype, (size_t)-1);
	FUNC3(&iov, &iovlen, "fspath", mntpath, (size_t)-1);
	FUNC3(&iov, &iovlen, "from", dev, (size_t)-1);
	FUNC3(&iov, &iovlen, "errmsg", errmsg, sizeof(errmsg));
	FUNC4(&iov, &iovlen, "uid", "%d", uid);
	FUNC4(&iov, &iovlen, "gid", "%u", gid);
	FUNC4(&iov, &iovlen, "mask", "%u", mask);
	FUNC4(&iov, &iovlen, "dirmask", "%u", dirmask);

	if (FUNC11(iov, iovlen, 0) < 0) {
		if (errmsg[0])
			FUNC6(1, "%s: %s", dev, errmsg);
		else
			FUNC6(1, "%s", dev);
	}

	FUNC7 (0);
}