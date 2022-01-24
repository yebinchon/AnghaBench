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
 int MODE_ECHO ; 
 int MODE_EDIT ; 
 int MODE_FLOW ; 
 int MODE_TRAPSIG ; 
 int /*<<< orphan*/  TELOPT_LFLOW ; 
 int /*<<< orphan*/  TELOPT_LINEMODE ; 
 int /*<<< orphan*/  TELOPT_SGA ; 
 scalar_t__ connected ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  escape ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 char* hostname ; 
 scalar_t__ kludgelinemode ; 
 scalar_t__ localchars ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC8 (char*,char*) ; 

__attribute__((used)) static int
FUNC9(int argc, char *argv[])
{
    if (connected) {
	FUNC6("Connected to %s.\n", hostname);
	if ((argc < 2) || FUNC8(argv[1], "notmuch")) {
	    int mode = FUNC3();

	    if (FUNC5(TELOPT_LINEMODE)) {
		FUNC6("Operating with LINEMODE option\n");
		FUNC6("%s line editing\n", (mode&MODE_EDIT) ? "Local" : "No");
		FUNC6("%s catching of signals\n",
					(mode&MODE_TRAPSIG) ? "Local" : "No");
		FUNC7();
#ifdef	KLUDGELINEMODE
	    } else if (kludgelinemode && my_want_state_is_dont(TELOPT_SGA)) {
		printf("Operating in obsolete linemode\n");
#endif
	    } else {
		FUNC6("Operating in single character mode\n");
		if (localchars)
		    FUNC6("Catching signals locally\n");
	    }
	    FUNC6("%s character echo\n", (mode&MODE_ECHO) ? "Local" : "Remote");
	    if (FUNC5(TELOPT_LFLOW))
		FUNC6("%s flow control\n", (mode&MODE_FLOW) ? "Local" : "No");
#ifdef	ENCRYPTION
	    encrypt_display();
#endif	/* ENCRYPTION */
	}
    } else {
	FUNC6("No connection.\n");
    }
    FUNC6("Escape character is '%s'.\n", FUNC0(escape));
    (void) FUNC2(stdout);
    return 1;
}