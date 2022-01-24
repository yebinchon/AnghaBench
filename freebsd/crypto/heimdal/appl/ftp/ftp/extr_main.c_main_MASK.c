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
struct servent {int dummy; } ;
struct passwd {int /*<<< orphan*/  pw_dir; } ;
typedef  int /*<<< orphan*/  homedir ;

/* Variables and functions */
 int MaxPathLen ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SO_DEBUG ; 
 int autologin ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ cpend ; 
 int crflag ; 
 int /*<<< orphan*/  debug ; 
 scalar_t__ debug_flag ; 
 int doglob ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ fromatty ; 
 int ftp_do_gss_bindings ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char**,int*) ; 
 int /*<<< orphan*/  getargs ; 
 scalar_t__ FUNC5 () ; 
 struct servent* FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ help_flag ; 
 char* home ; 
 int interactive ; 
 int /*<<< orphan*/  intr ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 struct passwd* FUNC9 (int /*<<< orphan*/ ) ; 
 int lineedit ; 
 int /*<<< orphan*/  lostpeer ; 
 int /*<<< orphan*/  num_args ; 
 int /*<<< orphan*/  options ; 
 scalar_t__ passivemode ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ proxy ; 
 int sendport ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,char**) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  toplevel ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int use_kerberos ; 
 int /*<<< orphan*/  verbose ; 
 scalar_t__ version_flag ; 

int
FUNC17(int argc, char **argv)
{
	int top;
	struct passwd *pw = NULL;
	char homedir[MaxPathLen];
	struct servent *sp;
	int optind = 0;

	FUNC13(argv[0]);

	sp = FUNC6("ftp", "tcp");
	if (sp == 0)
		FUNC1(1, "ftp/tcp: unknown service");
	doglob = 1;
	interactive = 1;
	autologin = 1;
	lineedit = 1;
	passivemode = 0; /* passive mode not active */
        use_kerberos = 1;
#ifdef KRB5
	ftp_do_gss_bindings = 1;
#endif

	if(FUNC4(getargs, num_args, argc, argv, &optind))
		FUNC16(1);
	if(help_flag)
		FUNC16(0);
	if(version_flag) {
		FUNC10(NULL);
		FUNC2(0);
	}

	if (debug_flag) {
		options |= SO_DEBUG;
		debug++;
	}

	argc -= optind;
	argv += optind;

	fromatty = FUNC8(FUNC3(stdin));
	if (fromatty)
		verbose++;
	cpend = 0;	/* no pending replies */
	proxy = 0;	/* proxy not active */
	crflag = 1;	/* strip c.r. on ascii gets */
	sendport = -1;	/* not using ports */
	/*
	 * Set up the home directory in case we're globbing.
	 */
	pw = FUNC9(FUNC7());
	if (pw != NULL) {
		FUNC15(homedir, pw->pw_dir, sizeof(homedir));
		home = homedir;
	}
	if (argc > 0) {
	    char *xargv[5];

	    if (FUNC11(toplevel))
		FUNC2(0);
	    FUNC14(SIGINT, intr);
	    FUNC14(SIGPIPE, lostpeer);
	    xargv[0] = (char*)FUNC5();
	    xargv[1] = argv[0];
	    xargv[2] = argv[1];
	    xargv[3] = argv[2];
	    xargv[4] = NULL;
	    FUNC12(argc+1, xargv);
	}
	if(FUNC11(toplevel) == 0)
	    top = 1;
	else
	    top = 0;
	if (top) {
	    FUNC14(SIGINT, intr);
	    FUNC14(SIGPIPE, lostpeer);
	}
	for (;;) {
	    FUNC0(top);
	    top = 1;
	}
}