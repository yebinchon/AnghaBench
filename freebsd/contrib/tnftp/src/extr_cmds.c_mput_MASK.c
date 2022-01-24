#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sigfunc ;
struct TYPE_5__ {scalar_t__ gl_pathc; char** gl_pathv; } ;
typedef  TYPE_1__ glob_t ;
typedef  int /*<<< orphan*/  gl ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int GLOB_BRACE ; 
 int GLOB_NOCHECK ; 
 int GLOB_TILDE ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,char***,char*) ; 
 int code ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 scalar_t__ connected ; 
 int /*<<< orphan*/  doglob ; 
 char* FUNC3 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ fromatty ; 
 scalar_t__ FUNC4 (char*,int,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int interactive ; 
 int /*<<< orphan*/  jabort ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  mapflag ; 
 int /*<<< orphan*/  mcase ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int mflag ; 
 int /*<<< orphan*/  mintr ; 
 int /*<<< orphan*/  ntflag ; 
 scalar_t__ proxy ; 
 char* FUNC8 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char const*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ sunique ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC13(int argc, char *argv[])
{
	int i;
	sigfunc oldintr;
	int ointer;
	const char *tp;

	if (argc == 0 || (argc == 1 && !FUNC1(&argc, &argv, "local-files"))) {
		FUNC0("usage: %s local-files\n", argv[0]);
		code = -1;
		return;
	}
	mflag = 1;
	oldintr = FUNC12(SIGINT, mintr);
	if (FUNC10(jabort, 1))
		FUNC6(argv[0]);
	if (proxy) {
		char *cp;

		while ((cp = FUNC8(argv, 0, NULL)) != NULL) {
			if (*cp == '\0' || !connected) {
				mflag = 0;
				continue;
			}
			if (mflag && FUNC2(argv[0], cp)) {
				char buf[MAXPATHLEN];
				tp = FUNC3(buf, sizeof(buf), cp,
				    mcase, ntflag, mapflag);
				FUNC9((sunique) ? "STOU" : "STOR",
				    cp, tp, cp != tp || !interactive);
				if (!mflag && fromatty) {
					ointer = interactive;
					interactive = 1;
					if (FUNC2(argv[0], NULL)) {
						mflag++;
					}
					interactive = ointer;
				}
			}
		}
		goto cleanupmput;
	}
	for (i = 1; i < argc && connected; i++) {
		char **cpp;
		glob_t gl;
		int flags;

		if (!doglob) {
			if (mflag && FUNC2(argv[0], argv[i])) {
				char buf[MAXPATHLEN];
				tp = FUNC3(buf, sizeof(buf), argv[i],
					0, ntflag, mapflag);
				FUNC9((sunique) ? "STOU" : "STOR",
				    argv[i], tp, tp != argv[i] || !interactive);
				if (!mflag && fromatty) {
					ointer = interactive;
					interactive = 1;
					if (FUNC2(argv[0], NULL)) {
						mflag++;
					}
					interactive = ointer;
				}
			}
			continue;
		}

		FUNC7(&gl, 0, sizeof(gl));
		flags = GLOB_BRACE|GLOB_NOCHECK|GLOB_TILDE;
		if (FUNC4(argv[i], flags, NULL, &gl) || gl.gl_pathc == 0) {
			FUNC11("Glob pattern `%s' not found", argv[i]);
			FUNC5(&gl);
			continue;
		}
		for (cpp = gl.gl_pathv; cpp && *cpp != NULL && connected;
		    cpp++) {
			if (mflag && FUNC2(argv[0], *cpp)) {
				char buf[MAXPATHLEN];
				tp = *cpp;
				tp = FUNC3(buf, sizeof(buf), *cpp,
				    0, ntflag, mapflag);
				FUNC9((sunique) ? "STOU" : "STOR",
				    *cpp, tp, *cpp != tp || !interactive);
				if (!mflag && fromatty) {
					ointer = interactive;
					interactive = 1;
					if (FUNC2(argv[0], NULL)) {
						mflag++;
					}
					interactive = ointer;
				}
			}
		}
		FUNC5(&gl);
	}
 cleanupmput:
	(void)FUNC12(SIGINT, oldintr);
	mflag = 0;
}