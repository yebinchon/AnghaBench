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
 char* DEFAULTPAGER ; 
 scalar_t__ FUNC0 (char const*) ; 
 size_t FEAT_MLST ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int code ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/ * features ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (size_t) ; 
 char* FUNC6 (char*) ; 
 char* FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,size_t) ; 
 int FUNC11 (char const*) ; 
 int /*<<< orphan*/  ttyout ; 

void
FUNC12(int argc, char *argv[])
{
	const char *cmd;
	char *remdir, *locbuf;
	const char *locfile;
	int pagecmd, mlsdcmd;

	remdir = NULL;
	locbuf = NULL;
	locfile = "-";
	pagecmd = mlsdcmd = 0;
			/*
			 * the only commands that start with `p' are
			 * the `pager' versions.
			 */
	if (argv[0][0] == 'p')
		pagecmd = 1;
	if (FUNC9(argv[0] + pagecmd , "mlsd") == 0) {
		if (! features[FEAT_MLST]) {
			FUNC3(ttyout,
			   "MLSD is not supported by the remote server.\n");
			return;
		}
		mlsdcmd = 1;
	}
	if (argc == 0)
		goto usage;

	if (mlsdcmd)
		cmd = "MLSD";
	else if (FUNC9(argv[0] + pagecmd, "nlist") == 0)
		cmd = "NLST";
	else
		cmd = "LIST";

	if (argc > 1)
		remdir = argv[1];
	if (argc > 2)
		locfile = argv[2];
	if (argc > 3 || ((pagecmd | mlsdcmd) && argc > 2)) {
 usage:
		if (pagecmd || mlsdcmd)
			FUNC1("usage: %s [remote-path]\n", argv[0]);
		else
			FUNC1("usage: %s [remote-path [local-file]]\n",
			    argv[0]);
		code = -1;
		goto freels;
	}

	if (pagecmd) {
		const char *p;
		size_t len;

		p = FUNC6("pager");
		if (FUNC0(p))
			p = DEFAULTPAGER;
		len = FUNC11(p) + 2;
		locbuf = FUNC5(len);
		locbuf[0] = '|';
		(void)FUNC10(locbuf + 1, p, len - 1);
		locfile = locbuf;
	} else if ((FUNC9(locfile, "-") != 0) && *locfile != '|') {
		if ((locbuf = FUNC7(locfile)) == NULL ||
		    !FUNC2("output to local-file:", locbuf)) {
			code = -1;
			goto freels;
		}
		locfile = locbuf;
	}
	FUNC8(cmd, locfile, remdir, "w", 0, 0);
 freels:
	if (locbuf)
		(void)FUNC4(locbuf);
}