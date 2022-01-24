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
typedef  int /*<<< orphan*/  reply ;

/* Variables and functions */
 int GV_FLAG_F ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gctl_req*) ; 
 struct gctl_req* FUNC2 () ; 
 char* FUNC3 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,char*,int,char*) ; 
 int FUNC5 (int,char* const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 

__attribute__((used)) static void
FUNC11(int argc, char * const *argv)
{
	struct gctl_req *req;
	const char *errstr;
	char reply[32];
	int flags, i;

	flags = 0;
	while ((i = FUNC5(argc, argv, "f")) != -1) {
		switch (i) {
		case 'f':
			flags |= GV_FLAG_F;
			break;
		default:
			FUNC9("invalid flag: %c", i);
			return;
		}
	}
	if ((flags & GV_FLAG_F) == 0) {
		if (!FUNC6(STDIN_FILENO)) {
			FUNC9("Please enter this command from a tty device\n");
			return;
		}
		FUNC7(" WARNING!  This command will completely wipe out"
		    " your gvinum configuration.\n"
		    " All data will be lost.  If you really want to do this,"
		    " enter the text\n\n"
		    " NO FUTURE\n"
		    " Enter text -> ");
		FUNC0(reply, sizeof(reply), stdin);
		if (FUNC8(reply, "NO FUTURE\n")) {
			FUNC7("\n No change\n");
			return;
		}
	}
	req = FUNC2();
	FUNC4(req, "class", -1, "VINUM");
	FUNC4(req, "verb", -1, "resetconfig");
	errstr = FUNC3(req);
	if (errstr != NULL) {
		FUNC10("can't reset config: %s", errstr);
		FUNC1(req);
		return;
	}
	FUNC1(req);
	FUNC7("gvinum configuration obliterated\n");
}