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
 int GV_FLAG_V ; 
 int /*<<< orphan*/  FUNC0 (struct gctl_req*) ; 
 struct gctl_req* FUNC1 () ; 
 char* FUNC2 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*,char*,int,...) ; 
 int FUNC4 (int,char* const*,char*) ; 
 int optind ; 
 int optreset ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void
FUNC7(int argc, char * const *argv, int rebuild)
{
	struct gctl_req *req;
	int flags, i;
	const char *errstr;
	const char *op;

	if (rebuild) {
		op = "rebuildparity";
	} else {
		op = "checkparity";
	}

	optreset = 1;
	optind = 1;
	flags = 0;
	while ((i = FUNC4(argc, argv, "fv")) != -1) {
		switch (i) {
		case 'f':
			flags |= GV_FLAG_F;
			break;
		case 'v':
			flags |= GV_FLAG_V;
			break;
		default:
			FUNC6("invalid flag '%c'", i);
			return;
		}
	}
	argc -= optind;
	argv += optind;

	if (argc != 1) {
		FUNC5("usage: %s [-f] [-v] <plex>", op);
		return;
	}

	req = FUNC1();
	FUNC3(req, "class", -1, "VINUM");
	FUNC3(req, "verb", -1, op);
	FUNC3(req, "rebuild", sizeof(int), &rebuild);
	FUNC3(req, "flags", sizeof(int), &flags);
	FUNC3(req, "plex", -1, argv[0]);

	errstr = FUNC2(req);
	if (errstr)
		FUNC6("%s\n", errstr);
	FUNC0(req);
}