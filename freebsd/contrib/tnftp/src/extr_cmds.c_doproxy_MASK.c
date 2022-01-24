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
struct cmd {int /*<<< orphan*/  (* c_handler ) (int,char**) ;int /*<<< orphan*/  c_name; scalar_t__ c_conn; int /*<<< orphan*/  c_proxy; } ;
typedef  int /*<<< orphan*/  sigfunc ;
typedef  int /*<<< orphan*/  cmdbuf ;

/* Variables and functions */
 int MAX_C_NAME ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  abortprox ; 
 int /*<<< orphan*/  FUNC1 (int*,char***,char*) ; 
 int code ; 
 scalar_t__ connected ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct cmd* FUNC3 (char*) ; 
 scalar_t__ line ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  proxabort ; 
 int proxflag ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,char**) ; 
 int /*<<< orphan*/  ttyout ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC12(int argc, char *argv[])
{
	struct cmd *c;
	int cmdpos;
	sigfunc oldintr;
	char cmdbuf[MAX_C_NAME];

	if (argc == 0 || (argc == 1 && !FUNC1(&argc, &argv, "command"))) {
		FUNC0("usage: %s command\n", argv[0]);
		code = -1;
		return;
	}
	c = FUNC3(argv[1]);
	if (c == (struct cmd *) -1) {
		FUNC2("?Ambiguous command.\n", ttyout);
		code = -1;
		return;
	}
	if (c == 0) {
		FUNC2("?Invalid command.\n", ttyout);
		code = -1;
		return;
	}
	if (!c->c_proxy) {
		FUNC2("?Invalid proxy command.\n", ttyout);
		code = -1;
		return;
	}
	if (FUNC6(abortprox, 1)) {
		code = -1;
		return;
	}
	oldintr = FUNC11(SIGINT, proxabort);
	FUNC5(1);
	if (c->c_conn && !connected) {
		FUNC2("Not connected.\n", ttyout);
		FUNC5(0);
		(void)FUNC11(SIGINT, oldintr);
		code = -1;
		return;
	}
	cmdpos = FUNC7(line, " \t");
	if (cmdpos > 0)		/* remove leading "proxy " from input buffer */
		FUNC4(line, line + cmdpos + 1, FUNC9(line) - cmdpos + 1);
	(void)FUNC8(cmdbuf, c->c_name, sizeof(cmdbuf));
	argv[1] = cmdbuf;
	(*c->c_handler)(argc-1, argv+1);
	if (connected) {
		proxflag = 1;
	}
	else {
		proxflag = 0;
	}
	FUNC5(0);
	(void)FUNC11(SIGINT, oldintr);
}