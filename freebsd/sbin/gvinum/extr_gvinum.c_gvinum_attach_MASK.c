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
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gctl_req*) ; 
 struct gctl_req* FUNC1 () ; 
 char* FUNC2 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (char* const,char*) ; 
 int FUNC5 (char* const,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void
FUNC7(int argc, char * const *argv)
{
	struct gctl_req *req;
	const char *errstr;
	int rename;
	off_t offset;

	rename = 0;
	offset = -1;
	if (argc < 3) {
		FUNC6("usage:\tattach <subdisk> <plex> [rename] "
		    "[<plexoffset>]\n"
		    "\tattach <plex> <volume> [rename]");
		return;
	}
	if (argc > 3) {
		if (!FUNC4(argv[3], "rename")) {
			rename = 1;
			if (argc == 5)
				offset = FUNC5(argv[4], NULL, 0);
		} else
			offset = FUNC5(argv[3], NULL, 0);
	}
	req = FUNC1();
	FUNC3(req, "class", -1, "VINUM");
	FUNC3(req, "verb", -1, "attach");
	FUNC3(req, "child", -1, argv[1]);
	FUNC3(req, "parent", -1, argv[2]);
	FUNC3(req, "offset", sizeof(off_t), &offset);
	FUNC3(req, "rename", sizeof(int), &rename);
	errstr = FUNC2(req);
	if (errstr != NULL)
		FUNC6("attach failed: %s", errstr);
	FUNC0(req);
}