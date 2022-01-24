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
struct gctl_req {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gctl_req*) ; 
 struct gctl_req* FUNC2 () ; 
 char* FUNC3 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,char*,int,...) ; 
 int FUNC5 (int,char* const*,char*) ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int optreset ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 

__attribute__((used)) static void
FUNC8(int argc, char * const *argv)
{
	struct gctl_req *req;
	int i, initsize, j;
	const char *errstr;
	char buf[20];

	/* 'start' with no arguments is a no-op. */
	if (argc == 1)
		return;

	initsize = 0;

	optreset = 1;
	optind = 1;
	while ((j = FUNC5(argc, argv, "S")) != -1) {
		switch (j) {
		case 'S':
			initsize = FUNC0(optarg);
			break;
		default:
			return;
		}
	}
	argc -= optind;
	argv += optind;

	if (!initsize)
		initsize = 512;

	req = FUNC2();
	FUNC4(req, "class", -1, "VINUM");
	FUNC4(req, "verb", -1, "start");
	FUNC4(req, "argc", sizeof(int), &argc);
	FUNC4(req, "initsize", sizeof(int), &initsize);
	if (argc) {
		for (i = 0; i < argc; i++) {
			FUNC6(buf, sizeof(buf), "argv%d", i);
			FUNC4(req, buf, -1, argv[i]);
		}
	}
	errstr = FUNC3(req);
	if (errstr != NULL) {
		FUNC7("can't start: %s", errstr);
		FUNC1(req);
		return;
	}

	FUNC1(req);
}