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
typedef  int /*<<< orphan*/  errmsg ;

/* Variables and functions */
 int EX_USAGE ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (struct iovec**,int*,char*,char*,int) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int,char**,char*) ; 
 scalar_t__ FUNC7 (struct iovec*,int,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 char* FUNC8 (char*,char) ; 
 char* FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 

int
FUNC12(int argc, char *argv[])
{
	struct iovec *iov;
	char *p, *val;
	char source[MAXPATHLEN];
	char target[MAXPATHLEN];
	char errmsg[255];
	int ch, iovlen;
	char nullfs[] = "nullfs";

	iov = NULL;
	iovlen = 0;
	errmsg[0] = '\0';
	while ((ch = FUNC6(argc, argv, "o:")) != -1)
		switch(ch) {
		case 'o':
			val = FUNC9("");
			p = FUNC8(optarg, '=');
			if (p != NULL) {
				FUNC5(val);
				*p = '\0';
				val = p + 1;
			}
			FUNC0(&iov, &iovlen, optarg, val, (size_t)-1);
			break;
		case '?':
		default:
			FUNC11();
		}
	argc -= optind;
	argv += optind;

	if (argc != 2)
		FUNC11();

	/* resolve target and source with realpath(3) */
	if (FUNC1(argv[0], target) != 0)
		FUNC2(EX_USAGE, "%s", target);
	if (FUNC1(argv[1], source) != 0)
		FUNC2(EX_USAGE, "%s", source);

	if (FUNC10(target, source) || FUNC10(source, target))
		FUNC3(EX_USAGE, "%s (%s) and %s are not distinct paths",
		    argv[0], target, argv[1]);

	FUNC0(&iov, &iovlen, "fstype", nullfs, (size_t)-1);
	FUNC0(&iov, &iovlen, "fspath", source, (size_t)-1);
	FUNC0(&iov, &iovlen, "target", target, (size_t)-1);
	FUNC0(&iov, &iovlen, "errmsg", errmsg, sizeof(errmsg));
	if (FUNC7(iov, iovlen, 0) < 0) {
		if (errmsg[0] != 0)
			FUNC2(1, "%s: %s", source, errmsg);
		else
			FUNC2(1, "%s", source);
	}
	FUNC4(0);
}