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

/* Variables and functions */
 int GV_FLAG_F ; 
 int /*<<< orphan*/  FUNC0 (struct gctl_req*) ; 
 struct gctl_req* FUNC1 () ; 
 char* FUNC2 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*,char*,int,...) ; 
 int FUNC4 (int,char* const*,char*) ; 
 int optind ; 
 int optreset ; 
 scalar_t__ FUNC5 (char* const,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static void
FUNC8(int argc, char * const *argv)
{
	struct gctl_req *req;
	int flags, i;
	const char *errstr;

	flags = 0;

	optreset = 1;
	optind = 1;

	while ((i = FUNC4(argc, argv, "f")) != -1) {
		switch (i) {
		case 'f':
			flags |= GV_FLAG_F;
			break;
		case '?':
		default:
			FUNC6("invalid flag: %c", i);
			return;
		}
	}

	argc -= optind;
	argv += optind;

	if (argc != 2) {
		FUNC7("usage: setstate [-f] <state> <obj>");
		return;
	}

	/*
	 * XXX: This hack is needed to avoid tripping over (now) invalid
	 * 'classic' vinum states and will go away later.
	 */
	if (FUNC5(argv[0], "up") && FUNC5(argv[0], "down") &&
	    FUNC5(argv[0], "stale")) {
		FUNC7("invalid state '%s'", argv[0]);
		return;
	}

	req = FUNC1();
	FUNC3(req, "class", -1, "VINUM");
	FUNC3(req, "verb", -1, "setstate");
	FUNC3(req, "state", -1, argv[0]);
	FUNC3(req, "object", -1, argv[1]);
	FUNC3(req, "flags", sizeof(int), &flags);

	errstr = FUNC2(req);
	if (errstr != NULL)
		FUNC7("%s", errstr);
	FUNC0(req);
}