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
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 scalar_t__ fromatty ; 
 int interactive ; 
 int /*<<< orphan*/  jabort ; 
 int /*<<< orphan*/  mabort ; 
 int mflag ; 
 char* mname ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(int argc, char **argv)
{
    sighand oldintr;
    int ointer;
    char *cp;

    if (argc < 2 && !FUNC0(&argc, &argv, "remote-files")) {
	FUNC3("usage: %s remote-files\n", argv[0]);
	code = -1;
	return;
    }
    mname = argv[0];
    mflag = 1;
    oldintr = FUNC6(SIGINT, mabort);
    FUNC5(jabort);
    while ((cp = FUNC4(argv,0)) != NULL) {
	if (*cp == '\0') {
	    mflag = 0;
	    continue;
	}
	if (mflag && FUNC2(argv[0], cp)) {
	    FUNC1("DELE %s", cp);
	    if (!mflag && fromatty) {
		ointer = interactive;
		interactive = 1;
		if (FUNC2("Continue with", "mdelete")) {
		    mflag++;
		}
		interactive = ointer;
	    }
	}
    }
    FUNC6(SIGINT, oldintr);
    mflag = 0;
}