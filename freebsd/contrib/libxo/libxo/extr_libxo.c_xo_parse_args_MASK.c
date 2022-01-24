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
typedef  int /*<<< orphan*/  xo_handle_t ;
typedef  int /*<<< orphan*/  libxo_opt ;
typedef  int /*<<< orphan*/  gnu_ext ;

/* Variables and functions */
 int /*<<< orphan*/  XOF_COLOR ; 
 int /*<<< orphan*/  XOF_COLOR_ALLOWED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XO_HAS_LIBXO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 size_t FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 char* xo_program ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

int
FUNC11 (int argc, char **argv)
{
    static char libxo_opt[] = "--libxo";
    char *cp;
    int i, save;

    /* Save our program name for xo_err and friends */
    xo_program = argv[0];
    cp = FUNC6(xo_program, '/');
    if (cp)
	xo_program = ++cp;
    else
	cp = argv[0];		/* Reset to front of string */

    /* GNU tools add an annoying ".test" as the program extension; remove it */
    size_t len = FUNC4(xo_program);
    static const char gnu_ext[] = ".test";
    if (len >= sizeof(gnu_ext)) {
	cp += len + 1 - sizeof(gnu_ext);
	if (FUNC9(cp, gnu_ext))
	    *cp = '\0';
    }

    xo_handle_t *xop = FUNC7(NULL);

    for (save = i = 1; i < argc; i++) {
	if (argv[i] == NULL
	    || FUNC5(argv[i], libxo_opt, sizeof(libxo_opt) - 1) != 0) {
	    if (save != i)
		argv[save] = argv[i];
	    save += 1;
	    continue;
	}

	cp = argv[i] + sizeof(libxo_opt) - 1;
	if (*cp == '\0') {
	    cp = argv[++i];
	    if (cp == NULL) {
		FUNC10("missing libxo option");
		return -1;
	    }
		
	    if (FUNC8(xop, cp) < 0)
		return -1;
	} else if (*cp == ':') {
	    if (FUNC8(xop, cp) < 0)
		return -1;

	} else if (*cp == '=') {
	    if (FUNC8(xop, ++cp) < 0)
		return -1;

	} else if (*cp == '-') {
	    cp += 1;
	    if (FUNC9(cp, "check")) {
		FUNC2(XO_HAS_LIBXO);

	    } else {
		FUNC10("unknown libxo option: '%s'", argv[i]);
		return -1;
	    }
	} else {
		FUNC10("unknown libxo option: '%s'", argv[i]);
	    return -1;
	}
    }

    /*
     * We only want to do color output on terminals, but we only want
     * to do this if the user has asked for color.
     */
    if (FUNC0(xop, XOF_COLOR_ALLOWED) && FUNC3(1))
	FUNC1(xop, XOF_COLOR);

    argv[save] = NULL;
    return save;
}