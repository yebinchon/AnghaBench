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
struct stat {scalar_t__ st_size; } ;
typedef  int /*<<< orphan*/  sigfunc ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 size_t FEAT_REST_STREAM ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,char***,char*) ; 
 int code ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  connected ; 
 char* FUNC3 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * features ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ fromatty ; 
 int interactive ; 
 int /*<<< orphan*/  jabort ; 
 int /*<<< orphan*/  localcwd ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  mapflag ; 
 int /*<<< orphan*/  mcase ; 
 int mflag ; 
 int /*<<< orphan*/  mintr ; 
 int /*<<< orphan*/  ntflag ; 
 int /*<<< orphan*/  proxy ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,char*,char*,int,int) ; 
 char* FUNC8 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ restart_point ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (char const*,struct stat*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  ttyout ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC14(int argc, char *argv[])
{
	sigfunc oldintr;
	int ointer;
	char *cp;
	const char *tp;
	int volatile restartit;

	if (argc == 0 ||
	    (argc == 1 && !FUNC1(&argc, &argv, "remote-files"))) {
		FUNC0("usage: %s remote-files\n", argv[0]);
		code = -1;
		return;
	}
	mflag = 1;
	restart_point = 0;
	restartit = 0;
	if (FUNC11(argv[0], "mreget") == 0) {
		if (! features[FEAT_REST_STREAM]) {
			FUNC5(ttyout,
		    "Restart is not supported by the remote server.\n");
			return;
		}
		restartit = 1;
	}
	oldintr = FUNC13(SIGINT, mintr);
	if (FUNC9(jabort, 1))
		FUNC6(argv[0]);
	while ((cp = FUNC8(argv, proxy, NULL)) != NULL) {
		char buf[MAXPATHLEN];
		if (*cp == '\0' || !connected) {
			mflag = 0;
			continue;
		}
		if (! mflag)
			continue;
		if (! FUNC4(cp, localcwd)) {
			FUNC5(ttyout, "Skipping non-relative filename `%s'\n",
			    cp);
			continue;
		}
		if (!FUNC2(argv[0], cp))
			continue;
		tp = FUNC3(buf, sizeof(buf), cp, mcase, ntflag, mapflag);
		if (restartit) {
			struct stat stbuf;

			if (FUNC10(tp, &stbuf) == 0)
				restart_point = stbuf.st_size;
			else
				FUNC12("Can't stat `%s'", tp);
		}
		FUNC7("RETR", tp, cp, restart_point ? "r+" : "w",
		    tp != cp || !interactive, 1);
		restart_point = 0;
		if (!mflag && fromatty) {
			ointer = interactive;
			interactive = 1;
			if (FUNC2(argv[0], NULL))
				mflag++;
			interactive = ointer;
		}
	}
	(void)FUNC13(SIGINT, oldintr);
	mflag = 0;
}