#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int pid_t ;
typedef  int /*<<< orphan*/  linename ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int do_compact; int do_force; int do_resolv; int test_only; int do_quiet; int show_sets; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* EX_OK ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  SIGTERM ; 
 char* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__ co ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int,char*) ; 
 scalar_t__ FUNC11 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (char const*,char*) ; 
 int FUNC14 () ; 
 int FUNC15 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC16 (int,char**) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 int optind ; 
 int FUNC18 (int*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int,char*,int) ; 
 int FUNC21 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC22(int ac, char *av[])
{
#define MAX_ARGS	32
	char buf[4096];
	char *progname = av[0];		/* original program name */
	const char *cmd = NULL;		/* preprocessor name, if any */
	const char *filename = av[ac-1]; /* file to read */
	int	c, lineno=0;
	FILE	*f = NULL;
	pid_t	preproc = 0;

	while ((c = FUNC15(ac, av, "cfNnp:qS")) != -1) {
		switch(c) {
		case 'c':
			co.do_compact = 1;
			break;

		case 'f':
			co.do_force = 1;
			break;

		case 'N':
			co.do_resolv = 1;
			break;

		case 'n':
			co.test_only = 1;
			break;

		case 'p':
			/*
			 * ipfw -p cmd [args] filename
			 *
			 * We are done with getopt(). All arguments
			 * except the filename go to the preprocessor,
			 * so we need to do the following:
			 * - check that a filename is actually present;
			 * - advance av by optind-1 to skip arguments
			 *   already processed;
			 * - decrease ac by optind, to remove the args
			 *   already processed and the final filename;
			 * - set the last entry in av[] to NULL so
			 *   popen() can detect the end of the array;
			 * - set optind=ac to let getopt() terminate.
			 */
			if (optind == ac)
				FUNC7(EX_USAGE, "no filename argument");
			cmd = optarg;
			av[ac-1] = NULL;
			av += optind - 1;
			ac -= optind;
			optind = ac;
			break;

		case 'q':
			co.do_quiet = 1;
			break;

		case 'S':
			co.show_sets = 1;
			break;

		default:
			FUNC7(EX_USAGE, "bad arguments, for usage"
			     " summary ``ipfw''");
		}

	}

	if (cmd == NULL && ac != optind + 1)
		FUNC7(EX_USAGE, "extraneous filename arguments %s", av[ac-1]);

	if ((f = FUNC13(filename, "r")) == NULL)
		FUNC6(EX_UNAVAILABLE, "fopen: %s", filename);

	if (cmd != NULL) {			/* pipe through preprocessor */
		int pipedes[2];

		if (FUNC18(pipedes) == -1)
			FUNC6(EX_OSERR, "cannot create pipe");

		preproc = FUNC14();
		if (preproc == -1)
			FUNC6(EX_OSERR, "cannot fork");

		if (preproc == 0) {
			/*
			 * Child, will run the preprocessor with the
			 * file on stdin and the pipe on stdout.
			 */
			if (FUNC5(FUNC12(f), 0) == -1
			    || FUNC5(pipedes[1], 1) == -1)
				FUNC6(EX_OSERR, "dup2()");
			FUNC9(f);
			FUNC4(pipedes[1]);
			FUNC4(pipedes[0]);
			FUNC8(cmd, av);
			FUNC6(EX_OSERR, "execvp(%s) failed", cmd);
		} else { /* parent, will reopen f as the pipe */
			FUNC9(f);
			FUNC4(pipedes[1]);
			if ((f = FUNC10(pipedes[0], "r")) == NULL) {
				int savederrno = errno;

				(void)FUNC17(preproc, SIGTERM);
				errno = savederrno;
				FUNC6(EX_OSERR, "fdopen()");
			}
		}
	}

	while (FUNC11(buf, sizeof(buf), f)) {		/* read commands */
		char linename[20];
		char *args[2];

		lineno++;
		FUNC20(linename, sizeof(linename), "Line %d", lineno);
		FUNC19(linename); /* XXX */
		args[0] = progname;
		args[1] = buf;
		FUNC16(2, args);
	}
	FUNC9(f);
	if (cmd != NULL) {
		int status;

		if (FUNC21(preproc, &status, 0) == -1)
			FUNC7(EX_OSERR, "waitpid()");
		if (FUNC1(status) && FUNC0(status) != EX_OK)
			FUNC7(EX_UNAVAILABLE,
			    "preprocessor exited with status %d",
			    FUNC0(status));
		else if (FUNC2(status))
			FUNC7(EX_UNAVAILABLE,
			    "preprocessor exited with signal %d",
			    FUNC3(status));
	}
}