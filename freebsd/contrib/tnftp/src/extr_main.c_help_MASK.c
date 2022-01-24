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
struct cmd {char* c_name; int /*<<< orphan*/  c_help; int /*<<< orphan*/  (* c_handler ) (int /*<<< orphan*/ ,char**) ;scalar_t__ c_proxy; } ;
typedef  int /*<<< orphan*/  cmdbuf ;
typedef  int /*<<< orphan*/  StringList ;

/* Variables and functions */
 char* HELPINDENT ; 
 int MAX_C_NAME ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 struct cmd* cmdtab ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 struct cmd* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ proxy ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  ttyout ; 

void
FUNC11(int argc, char *argv[])
{
	struct cmd *c;
	char *nargv[1], *cmd;
	const char *p;
	int isusage;

	cmd = argv[0];
	isusage = (FUNC8(cmd, "usage") == 0);
	if (argc == 0 || (isusage && argc == 1)) {
		FUNC0("usage: %s [command [...]]\n", cmd);
		return;
	}
	if (argc == 1) {
		StringList *buf;

		buf = FUNC3();
		FUNC1(ttyout,
		    "%sommands may be abbreviated.  Commands are:\n\n",
		    proxy ? "Proxy c" : "C");
		for (c = cmdtab; (p = c->c_name) != NULL; c++)
			if (!proxy || c->c_proxy)
				FUNC2(buf, FUNC4(p));
		FUNC6(buf);
		FUNC7(buf, 1);
		return;
	}

#define	HELPINDENT ((int) sizeof("disconnect"))

	while (--argc > 0) {
		char *arg;
		char cmdbuf[MAX_C_NAME];

		arg = *++argv;
		c = FUNC5(arg);
		if (c == (struct cmd *)-1)
			FUNC1(ttyout, "?Ambiguous %s command `%s'\n",
			    cmd, arg);
		else if (c == NULL)
			FUNC1(ttyout, "?Invalid %s command `%s'\n",
			    cmd, arg);
		else {
			if (isusage) {
				(void)FUNC9(cmdbuf, c->c_name, sizeof(cmdbuf));
				nargv[0] = cmdbuf;
				(*c->c_handler)(0, nargv);
			} else
				FUNC1(ttyout, "%-*s\t%s\n", HELPINDENT,
				    c->c_name, c->c_help);
		}
	}
}