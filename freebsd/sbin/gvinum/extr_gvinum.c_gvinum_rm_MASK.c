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
 int GV_FLAG_F ; 
 int GV_FLAG_R ; 
 int /*<<< orphan*/  FUNC0 (struct gctl_req*) ; 
 struct gctl_req* FUNC1 () ; 
 char* FUNC2 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*,char*,int,...) ; 
 int FUNC4 (int,char* const*,char*) ; 
 int optind ; 
 int optreset ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 

__attribute__((used)) static void
FUNC7(int argc, char * const *argv)
{
	struct gctl_req *req;
	int flags, i, j;
	const char *errstr;
	char buf[20];

	flags = 0;
	optreset = 1;
	optind = 1;
	while ((j = FUNC4(argc, argv, "rf")) != -1) {
		switch (j) {
		case 'f':
			flags |= GV_FLAG_F;
			break;
		case 'r':
			flags |= GV_FLAG_R;
			break;
		default:
			return;
		}
	}
	argc -= optind;
	argv += optind;

	req = FUNC1();
	FUNC3(req, "class", -1, "VINUM");
	FUNC3(req, "verb", -1, "remove");
	FUNC3(req, "argc", sizeof(int), &argc);
	FUNC3(req, "flags", sizeof(int), &flags);
	if (argc) {
		for (i = 0; i < argc; i++) {
			FUNC5(buf, sizeof(buf), "argv%d", i);
			FUNC3(req, buf, -1, argv[i]);
		}
	}
	errstr = FUNC2(req);
	if (errstr != NULL) {
		FUNC6("can't remove: %s", errstr);
		FUNC0(req);
		return;
	}
	FUNC0(req);
}