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
struct gctl_req {char* error; } ;
struct g_command {int gc_flags; int /*<<< orphan*/  (* gc_func ) (struct gctl_req*,unsigned int) ;int /*<<< orphan*/  gc_name; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  GEOM_CLASS_CMDS ; 
 int /*<<< orphan*/  GEOM_STD_CMDS ; 
 int G_FLAG_LOADKLD ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct g_command* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 char* gclass_name ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*) ; 
 struct gctl_req* FUNC4 () ; 
 char* FUNC5 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC6 (struct gctl_req*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct gctl_req*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct g_command*,struct gctl_req*,int*,char***) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 unsigned int FUNC11 (struct g_command*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct gctl_req*,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ verbose ; 
 char* version ; 
 int /*<<< orphan*/  FUNC17 (char*,char const*) ; 

__attribute__((used)) static void
FUNC18(int argc, char *argv[])
{
	struct g_command *cmd;
	struct gctl_req *req;
	const char *errstr;
	char buf[4096];

	/* First try to find a command defined by a class. */
	cmd = FUNC2(argv[0], GEOM_CLASS_CMDS);
	if (cmd == NULL) {
		/* Now, try to find a standard command. */
		cmd = FUNC2(argv[0], GEOM_STD_CMDS);
		if (cmd == NULL) {
			FUNC17("Unknown command: %s.", argv[0]);
			FUNC16();
		}
		if (!FUNC12(cmd->gc_name)) {
			FUNC17("Command '%s' not available; "
			    "try 'load' first.", argv[0]);
			FUNC1(EXIT_FAILURE);
		}
	}
	if ((cmd->gc_flags & G_FLAG_LOADKLD) != 0)
		FUNC8();

	req = FUNC4();
	FUNC6(req, "class", -1, gclass_name);
	FUNC6(req, "verb", -1, argv[0]);
	if (version != NULL)
		FUNC6(req, "version", sizeof(*version), version);
	FUNC9(cmd, req, &argc, &argv);

	FUNC0(buf, sizeof(buf));
	if (cmd->gc_func != NULL) {
		unsigned flags;

		flags = FUNC11(cmd);
		cmd->gc_func(req, flags);
		errstr = req->error;
	} else {
		FUNC7(req, "output", sizeof(buf), buf);
		errstr = FUNC5(req);
	}
	if (errstr != NULL && errstr[0] != '\0') {
		FUNC17("%s", errstr);
		if (FUNC14(errstr, "warning: ", FUNC13("warning: ")) != 0) {
			FUNC3(req);
			FUNC1(EXIT_FAILURE);
		}
	}
	if (buf[0] != '\0')
		FUNC10("%s", buf);
	FUNC3(req);
	if (verbose)
		FUNC10("Done.\n");
	FUNC1(EXIT_SUCCESS);
}