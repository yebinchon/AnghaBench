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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BUFSIZ ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FALSE ; 
 scalar_t__ OK ; 
 scalar_t__ FUNC1 (char**) ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*) ; 
 int FUNC8 (int,char**,char*) ; 
 scalar_t__ is_init ; 
 scalar_t__ is_reset ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 char* prg_name ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 scalar_t__ FUNC12 (char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC13 (int,char**) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

int
FUNC16(int argc, char **argv)
{
    char *term;
    int errret;
    bool cmdline = TRUE;
    int c;
    char buf[BUFSIZ];
    int result = 0;

    FUNC4(prg_name = FUNC3(argv[0]));

    term = FUNC7("TERM");

    while ((c = FUNC8(argc, argv, "ST:V")) != -1) {
	switch (c) {
	case 'S':
	    cmdline = FALSE;
	    break;
	case 'T':
	    FUNC15(FALSE);
	    term = optarg;
	    break;
	case 'V':
	    FUNC10(FUNC5());
	    FUNC0(EXIT_SUCCESS);
	default:
	    FUNC14();
	    /* NOTREACHED */
	}
    }

    /*
     * Modify the argument list to omit the options we processed.
     */
    if (is_reset || is_init) {
	if (optind-- < argc) {
	    argc -= optind;
	    argv += optind;
	}
	argv[0] = prg_name;
    } else {
	argc -= optind;
	argv += optind;
    }

    if (term == 0 || *term == '\0')
	FUNC11(2, "No value for $TERM and no -T specified");

    if (FUNC12(term, STDOUT_FILENO, &errret) != OK && errret <= 0)
	FUNC11(3, "unknown terminal \"%s\"", term);

    if (cmdline) {
	if ((argc <= 0) && !is_reset && !is_init)
	    FUNC14();
	FUNC0(FUNC13(argc, argv));
    }

    while (FUNC6(buf, sizeof(buf), stdin) != 0) {
	char *argvec[16];	/* command, 9 parms, null, & slop */
	int argnum = 0;
	char *cp;

	/* crack the argument list into a dope vector */
	for (cp = buf; *cp; cp++) {
	    if (FUNC9(FUNC2(*cp))) {
		*cp = '\0';
	    } else if (cp == buf || cp[-1] == 0) {
		argvec[argnum++] = cp;
		if (argnum >= (int) FUNC1(argvec) - 1)
		    break;
	    }
	}
	argvec[argnum] = 0;

	if (argnum != 0
	    && FUNC13(argnum, argvec) != 0) {
	    if (result == 0)
		result = 4;	/* will return value >4 */
	    ++result;
	}
    }

    FUNC0(result);
}