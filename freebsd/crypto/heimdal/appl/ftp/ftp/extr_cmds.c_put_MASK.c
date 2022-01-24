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

/* Variables and functions */
 scalar_t__ TYPE_I ; 
 int /*<<< orphan*/  FUNC0 (int*,char***,char*) ; 
 int code ; 
 scalar_t__ curtype ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 scalar_t__ mapflag ; 
 scalar_t__ ntflag ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,char*,int) ; 
 scalar_t__ sunique ; 

void
FUNC6(int argc, char **argv)
{
	char *cmd;
	int loc = 0;
	char *oldargv1, *oldargv2;

	if (argc == 2) {
		argc++;
		argv[2] = argv[1];
		loc++;
	}
	if (argc < 2 && !FUNC0(&argc, &argv, "local-file"))
		goto usage;
	if (argc < 3 && !FUNC0(&argc, &argv, "remote-file")) {
usage:
		FUNC4("usage: %s local-file remote-file\n", argv[0]);
		code = -1;
		return;
	}
	oldargv1 = argv[1];
	oldargv2 = argv[2];
	if (!FUNC3(&argv[1])) {
		code = -1;
		return;
	}
	/*
	 * If "globulize" modifies argv[1], and argv[2] is a copy of
	 * the old argv[1], make it a copy of the new argv[1].
	 */
	if (argv[1] != oldargv1 && argv[2] == oldargv1) {
		argv[2] = argv[1];
	}
	cmd = (argv[0][0] == 'a') ? "APPE" : ((sunique) ? "STOU" : "STOR");
	if (loc && ntflag) {
		argv[2] = FUNC2(argv[2]);
	}
	if (loc && mapflag) {
		argv[2] = FUNC1(argv[2]);
	}
	FUNC5(cmd, argv[1], argv[2],
		    curtype == TYPE_I ? "rb" : "r",
		    argv[1] != oldargv1 || argv[2] != oldargv2);
}