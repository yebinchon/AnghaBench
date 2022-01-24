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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/ * FS ; 
 int /*<<< orphan*/  LC_COLLATE ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  LC_NUMERIC ; 
 int /*<<< orphan*/  MAX_PFILE ; 
 int NSYMTAB ; 
 int /*<<< orphan*/  SIGFPE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,char**) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* cmdname ; 
 int compile_time ; 
 scalar_t__ dbg ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  environ ; 
 scalar_t__ errorflag ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  fpecatch ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* lexprog ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ npfile ; 
 char** pfile ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  recsize ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int safe ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int srand_seed ; 
 int /*<<< orphan*/  FUNC18 (unsigned long) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  symtab ; 
 char* version ; 
 int /*<<< orphan*/  winner ; 
 int /*<<< orphan*/ * yyin ; 
 int /*<<< orphan*/  FUNC21 () ; 

int FUNC22(int argc, char *argv[])
{
	const char *fs = NULL;

	FUNC16(LC_CTYPE, "");
	FUNC16(LC_COLLATE, "");
	FUNC16(LC_NUMERIC, "C"); /* for parsing cmdline & prog */
	cmdname = argv[0];
	if (argc == 1) {
		FUNC8(stderr, 
		  "usage: %s [-F fs] [-v var=value] [-f progfile | 'prog'] [file ...]\n", 
		  cmdname);
		FUNC7(1);
	}
	FUNC17(SIGFPE, fpecatch);
	/*signal(SIGSEGV, segvcatch); experiment */

	srand_seed = 1;
	FUNC18((unsigned long) srand_seed);

	yyin = NULL;
	symtab = FUNC10(NSYMTAB/NSYMTAB);
	while (argc > 1 && argv[1][0] == '-' && argv[1][1] != '\0') {
		if (FUNC19(argv[1],"-version") == 0 || FUNC19(argv[1],"--version") == 0) {
			FUNC11("awk %s\n", version);
			FUNC7(0);
			break;
		}
		if (FUNC19(argv[1], "--") == 0) {	/* explicit end of args */
			argc--;
			argv++;
			break;
		}
		switch (argv[1][1]) {
		case 's':
			if (FUNC19(argv[1], "-safe") == 0)
				safe = 1;
			break;
		case 'f':	/* next argument is program filename */
			if (argv[1][2] != 0) {  /* arg is -fsomething */
				if (npfile >= MAX_PFILE - 1)
					FUNC0("too many -f options"); 
				pfile[npfile++] = &argv[1][2];
			} else {		/* arg is -f something */
				argc--; argv++;
				if (argc <= 1)
					FUNC0("no program filename");
				if (npfile >= MAX_PFILE - 1)
					FUNC0("too many -f options"); 
				pfile[npfile++] = argv[1];
			}
			break;
		case 'F':	/* set field separator */
			if (argv[1][2] != 0) {	/* arg is -Fsomething */
				if (argv[1][2] == 't' && argv[1][3] == 0)	/* wart: t=>\t */
					fs = "\t";
				else if (argv[1][2] != 0)
					fs = &argv[1][2];
			} else {		/* arg is -F something */
				argc--; argv++;
				if (argc > 1 && argv[1][0] == 't' && argv[1][1] == 0)	/* wart: t=>\t */
					fs = "\t";
				else if (argc > 1 && argv[1][0] != 0)
					fs = &argv[1][0];
			}
			if (fs == NULL || *fs == '\0')
				FUNC1("field separator FS is empty");
			break;
		case 'v':	/* -v a=1 to be done NOW.  one -v for each */
			if (argv[1][2] != 0) {  /* arg is -vsomething */
				if (FUNC9(&argv[1][2]))
					FUNC15(&argv[1][2]);
				else
					FUNC0("invalid -v option argument: %s", &argv[1][2]);
			} else {		/* arg is -v something */
				argc--; argv++;
				if (argc <= 1)
					FUNC0("no variable name");
				if (FUNC9(argv[1]))
					FUNC15(argv[1]);
				else
					FUNC0("invalid -v option argument: %s", argv[1]);
			}
			break;
		case 'd':
			dbg = FUNC3(&argv[1][2]);
			if (dbg == 0)
				dbg = 1;
			FUNC11("awk %s\n", version);
			break;
		default:
			FUNC1("unknown option %s ignored", argv[1]);
			break;
		}
		argc--;
		argv++;
	}
	/* argv[1] is now the first argument */
	if (npfile == 0) {	/* no -f; first argument is program */
		if (argc <= 1) {
			if (dbg)
				FUNC7(0);
			FUNC0("no program given");
		}
		   FUNC5( ("program = |%s|\n", argv[1]) );
		lexprog = argv[1];
		argc--;
		argv++;
	}
	FUNC13(recsize);
	FUNC20();
	compile_time = 1;
	argv[0] = cmdname;	/* put prog name at front of arglist */
	   FUNC5( ("argc=%d, argv[0]=%s\n", argc, argv[0]) );
	FUNC2(argc, argv);
	if (!safe)
		FUNC6(environ);
	FUNC21();
	FUNC16(LC_NUMERIC, ""); /* back to whatever it is locally */
	if (fs)
		*FS = FUNC12(fs, '\0');
	   FUNC5( ("errorflag=%d\n", errorflag) );
	if (errorflag == 0) {
		compile_time = 0;
		FUNC14(winner);
	} else
		FUNC4();
	return(errorflag);
}