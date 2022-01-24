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
typedef  int /*<<< orphan*/  uid_str ;
struct iovec {int dummy; } ;
typedef  int /*<<< orphan*/  gid_str ;
typedef  int /*<<< orphan*/  errmsg ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (struct iovec**,int*,char*,char*,int) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct iovec*,int,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (char*,char) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 

int 
FUNC15(int argc, char *argv[])
{
	struct iovec	*iov;
	int ch, iovlen;
	char source [MAXPATHLEN], target[MAXPATHLEN], errmsg[255];
	char uid_str[20], gid_str[20];
	char fstype[] = "unionfs";
	char *p, *val;

	iov = NULL;
	iovlen = 0;
	FUNC6(errmsg, 0, sizeof(errmsg));

	while ((ch = FUNC5(argc, argv, "bo:")) != -1) {
		switch (ch) {
		case 'b':
			FUNC10("\n  -b is deprecated.  Use \"-o below\" instead\n");
			FUNC0(&iov, &iovlen, "below", NULL, 0);
			break;
		case 'o':
                        p = FUNC11(optarg, '=');
                        val = NULL;
                        if (p != NULL) {
                                *p = '\0';
                                val = p + 1;
				if (FUNC12(optarg, "gid") == 0) {
					FUNC8(val, gid_str, sizeof(gid_str));
					val = gid_str;
				}
				else if (FUNC12(optarg, "uid") == 0) {
					FUNC9(val, uid_str, sizeof(uid_str));
					val = uid_str;
				}
                        }
                        FUNC0(&iov, &iovlen, optarg, val, (size_t)-1);
			break;
		case '?':
		default:
			FUNC14();
			/* NOTREACHED */
		}
	}
	argc -= optind;
	argv += optind;

	if (argc != 2)
		FUNC14();

	/* resolve both target and source with realpath(3) */
	if (FUNC1(argv[0], target) != 0)
		FUNC2(EX_USAGE, "%s", target);
	if (FUNC1(argv[1], source) != 0)
		FUNC2(EX_USAGE, "%s", source);

	if (FUNC13(target, source) || FUNC13(source, target))
		FUNC3(EX_USAGE, "%s (%s) and %s (%s) are not distinct paths",
		     argv[0], target, argv[1], source);

	FUNC0(&iov, &iovlen, "fstype", fstype, (size_t)-1);
	FUNC0(&iov, &iovlen, "fspath", source, (size_t)-1);
	FUNC0(&iov, &iovlen, "from", target, (size_t)-1);
	FUNC0(&iov, &iovlen, "errmsg", errmsg, sizeof(errmsg));

	if (FUNC7(iov, iovlen, 0))
		FUNC2(EX_OSERR, "%s: %s", source, errmsg);
	FUNC4(0);
}