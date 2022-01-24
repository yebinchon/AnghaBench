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
typedef  int /*<<< orphan*/  sigfunc ;

/* Variables and functions */
 scalar_t__ COMPLETE ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,char***,char*) ; 
 int code ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int dirchange ; 
 scalar_t__ fromatty ; 
 int interactive ; 
 int /*<<< orphan*/  jabort ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int mflag ; 
 int /*<<< orphan*/  mintr ; 
 char* FUNC5 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8(int argc, char *argv[])
{
	sigfunc oldintr;
	int ointer;
	char *cp;

	if (argc == 0 ||
	    (argc == 1 && !FUNC1(&argc, &argv, "remote-files"))) {
		FUNC0("usage: %s [remote-files]\n", argv[0]);
		code = -1;
		return;
	}
	mflag = 1;
	oldintr = FUNC7(SIGINT, mintr);
	if (FUNC6(jabort, 1))
		FUNC4(argv[0]);
	while ((cp = FUNC5(argv, 0, NULL)) != NULL) {
		if (*cp == '\0') {
			mflag = 0;
			continue;
		}
		if (mflag && FUNC3(argv[0], cp)) {
			if (FUNC2("DELE %s", cp) == COMPLETE)
				dirchange = 1;
			if (!mflag && fromatty) {
				ointer = interactive;
				interactive = 1;
				if (FUNC3(argv[0], NULL)) {
					mflag++;
				}
				interactive = ointer;
			}
		}
	}
	(void)FUNC7(SIGINT, oldintr);
	mflag = 0;
}