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
 int GV_FLAG_R ; 
 int /*<<< orphan*/  FUNC0 (struct gctl_req*) ; 
 struct gctl_req* FUNC1 () ; 
 char* FUNC2 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*,char*,int,...) ; 
 int FUNC4 (int,char* const*,char*) ; 
 int optind ; 
 int optreset ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void
FUNC6(int argc, char * const *argv)
{
	struct gctl_req *req;
	const char *errstr;
	int flags, j;

	flags = 0;

	if (argc) {
		optreset = 1;
		optind = 1;
		while ((j = FUNC4(argc, argv, "r")) != -1) {
			switch (j) {
			case 'r':
				flags |= GV_FLAG_R;
				break;
			default:
				return;
			}
		}
		argc -= optind;
		argv += optind;
	}

	switch (argc) {
		case 0:
			FUNC5("no object to rename specified");
			return;
		case 1:
			FUNC5("no new name specified");
			return;
		case 2:
			break;
		default:
			FUNC5("more than one new name specified");
			return;
	}

	req = FUNC1();
	FUNC3(req, "class", -1, "VINUM");
	FUNC3(req, "verb", -1, "rename");
	FUNC3(req, "flags", sizeof(int), &flags);
	FUNC3(req, "object", -1, argv[0]);
	FUNC3(req, "newname", -1, argv[1]);
	errstr = FUNC2(req);
	if (errstr != NULL)
		FUNC5("can't rename object:  %s", errstr);
	FUNC0(req);
}