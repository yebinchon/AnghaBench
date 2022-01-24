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
typedef  int /*<<< orphan*/  fstype ;
typedef  int /*<<< orphan*/  errmsg ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (struct iovec**,int*,char*,char*,int) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int getmnt_silent ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mopts ; 
 int FUNC5 (struct iovec*,int,int) ; 
 char* optarg ; 
 int optind ; 
 int optreset ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,...) ; 

int
FUNC11(const char *vfstype, int argc, char *argv[])
{
	struct iovec *iov;
	int iovlen;
	int mntflags = 0;
	int ch;
	char *dev, *dir, mntpath[MAXPATHLEN];
	char fstype[32];
	char errmsg[255];
	char *p, *val;

	FUNC8(fstype, vfstype, sizeof(fstype));
	FUNC4(errmsg, 0, sizeof(errmsg));

	getmnt_silent = 1;
	iov = NULL;
	iovlen = 0;

	optind = optreset = 1;		/* Reset for parse of new argv. */
	while ((ch = FUNC3(argc, argv, "o:")) != -1) {
		switch(ch) {
		case 'o':
			FUNC2(optarg, mopts, &mntflags, 0);
			p = FUNC7(optarg, '=');
			val = NULL;
			if (p != NULL) {
				*p = '\0';
				val = p + 1;
			}
			FUNC0(&iov, &iovlen, optarg, val, (size_t)-1);
			break;
		case '?':
		default:
			FUNC9();
		}
	}

	argc -= optind;
	argv += optind;
	if (argc != 2)
		FUNC9();

	dev = argv[0];
	dir = argv[1];

	if (FUNC1(dir, mntpath) != 0) {
		FUNC10("%s", mntpath);
		return (1);
	}
	(void)FUNC6(dev, dev);

	FUNC0(&iov, &iovlen, "fstype", fstype, (size_t)-1);
	FUNC0(&iov, &iovlen, "fspath", mntpath, (size_t)-1);
	FUNC0(&iov, &iovlen, "from", dev, (size_t)-1);
	FUNC0(&iov, &iovlen, "errmsg", errmsg, sizeof(errmsg));

	if (FUNC5(iov, iovlen, mntflags) == -1) {
		if (*errmsg != '\0')
			FUNC10("%s: %s", dev, errmsg);
		else
			FUNC10("%s", dev);
		return (1);
	}
	return (0);
}