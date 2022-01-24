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
typedef  int /*<<< orphan*/  sighand ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC0 (int*,char***,char*) ; 
 int code ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 scalar_t__ fromatty ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int interactive ; 
 int /*<<< orphan*/  jabort ; 
 int /*<<< orphan*/  mabort ; 
 int mflag ; 
 char* mname ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,char*) ; 

void
FUNC8(int argc, char **argv)
{
	sighand oldintr;
	int ointer, i;
	char *cmd, filemode[2], *dest;

	if (argc < 2 && !FUNC0(&argc, &argv, "remote-files"))
		goto usage;
	if (argc < 3 && !FUNC0(&argc, &argv, "local-file")) {
usage:
		FUNC3("usage: %s remote-files local-file\n", argv[0]);
		code = -1;
		return;
	}
	dest = argv[argc - 1];
	argv[argc - 1] = NULL;
	if (FUNC7(dest, "-") && *dest != '|')
		if (!FUNC2(&dest) ||
		    !FUNC1("output to local-file:", dest)) {
			code = -1;
			return;
	}
	cmd = argv[0][1] == 'l' ? "NLST" : "LIST";
	mname = argv[0];
	mflag = 1;
	oldintr = FUNC6(SIGINT, mabort);
	FUNC5(jabort);
	filemode[1] = '\0';
	for (i = 1; mflag && i < argc-1; ++i) {
		*filemode = (i == 1) ? 'w' : 'a';
		FUNC4(cmd, dest, argv[i], filemode, 0, 1);
		if (!mflag && fromatty) {
			ointer = interactive;
			interactive = 1;
			if (FUNC1("Continue with", argv[0])) {
				mflag ++;
			}
			interactive = ointer;
		}
	}
	FUNC6(SIGINT, oldintr);
	mflag = 0;
}