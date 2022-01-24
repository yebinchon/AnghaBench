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
 scalar_t__ FUNC0 (long*,long*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  connected ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,...) ; 
 int FUNC3 () ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * saveline ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 char* FUNC8 (char*,char) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 

__attribute__((used)) static int
FUNC10(int argc, char **argv)
{
    long oldrows, oldcols, newrows, newcols, err;

    FUNC7();

    err = (FUNC0(&oldrows, &oldcols) == 0) ? 1 : 0;
    switch(FUNC3()) {
    case -1:
	FUNC5("Fork failed\r\n");
	break;

    case 0:
	{
	    /*
	     * Fire up the shell in the child.
	     */
	    char *shellp, *shellname;

	    shellp = FUNC4("SHELL");
	    if (shellp == NULL)
		shellp = "/bin/sh";
	    if ((shellname = FUNC8(shellp, '/')) == 0)
		shellname = shellp;
	    else
		shellname++;
	    if (argc > 1)
		FUNC2(shellp, shellname, "-c", &saveline[1], NULL);
	    else
		FUNC2(shellp, shellname, NULL);
	    FUNC5("Execl");
	    FUNC1(1);
	}
    default:
	    FUNC9((int *)0);	/* Wait for the shell to complete */

	    if (FUNC0(&newrows, &newcols) && connected &&
		(err || ((oldrows != newrows) || (oldcols != newcols)))) {
		    FUNC6();
	    }
	    break;
    }
    return 1;
}