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
typedef  int /*<<< orphan*/  config ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  GV_CFG_LEN ; 
 int GV_FLAG_R ; 
 int GV_FLAG_S ; 
 int GV_FLAG_V ; 
 int GV_FLAG_VV ; 
 int /*<<< orphan*/  FUNC0 (struct gctl_req*) ; 
 struct gctl_req* FUNC1 () ; 
 char* FUNC2 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,char*,int,char*) ; 
 int FUNC5 (int,char* const*,char*) ; 
 int optind ; 
 int optreset ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 

__attribute__((used)) static void
FUNC9(int argc, char * const *argv)
{
	struct gctl_req *req;
	int flags, i, j;
	const char *errstr;
	char buf[20], config[GV_CFG_LEN + 1];
	const char *cmd;

	flags = 0;
	cmd = "list";

	if (argc) {
		optreset = 1;
		optind = 1;
		cmd = argv[0];
		while ((j = FUNC5(argc, argv, "rsvV")) != -1) {
			switch (j) {
			case 'r':
				flags |= GV_FLAG_R;
				break;
			case 's':
				flags |= GV_FLAG_S;
				break;
			case 'v':
				flags |= GV_FLAG_V;
				break;
			case 'V':
				flags |= GV_FLAG_V;
				flags |= GV_FLAG_VV;
				break;
			case '?':
			default:
				return;
			}
		}
		argc -= optind;
		argv += optind;

	}

	req = FUNC1();
	FUNC3(req, "class", -1, "VINUM");
	FUNC3(req, "verb", -1, "list");
	FUNC3(req, "cmd", -1, cmd);
	FUNC3(req, "argc", sizeof(int), &argc);
	FUNC3(req, "flags", sizeof(int), &flags);
	FUNC4(req, "config", sizeof(config), config);
	if (argc) {
		for (i = 0; i < argc; i++) {
			FUNC7(buf, sizeof(buf), "argv%d", i);
			FUNC3(req, buf, -1, argv[i]);
		}
	}
	errstr = FUNC2(req);
	if (errstr != NULL) {
		FUNC8("can't get configuration: %s", errstr);
		FUNC0(req);
		return;
	}

	FUNC6("%s", config);
	FUNC0(req);
}