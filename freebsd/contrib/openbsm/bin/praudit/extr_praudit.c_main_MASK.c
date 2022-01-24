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
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int AU_OFLAG_NORESOLVE ; 
 int AU_OFLAG_RAW ; 
 int AU_OFLAG_SHORT ; 
 int AU_OFLAG_XML ; 
 scalar_t__ ENOSYS ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  del ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int oflags ; 
 int oneline ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int partial ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC18(int argc, char **argv)
{
	int ch;
	int i;
#ifdef HAVE_CAP_ENTER
	int retval;
	pid_t childpid, pid;
#endif
	FILE *fp;

	while ((ch = FUNC10(argc, argv, "d:lnprsx")) != -1) {
		switch(ch) {
		case 'd':
			del = optarg;
			break;

		case 'l':
			oneline = 1;
			break;

		case 'n':
			oflags |= AU_OFLAG_NORESOLVE;
			break;

		case 'p':
			partial = 1;
			break;

		case 'r':
			if (oflags & AU_OFLAG_SHORT)
				FUNC16();	/* Exclusive from shortfrm. */
			oflags |= AU_OFLAG_RAW;
			break;

		case 's':
			if (oflags & AU_OFLAG_RAW)
				FUNC16();	/* Exclusive from raw. */
			oflags |= AU_OFLAG_SHORT;
			break;

		case 'x':
			oflags |= AU_OFLAG_XML;
			break;

		case '?':
		default:
			FUNC16();
		}
	}

#ifdef HAVE_CAP_ENTER
	/*
	 * Prime group, password, and audit-event files to be opened before we
	 * enter capability mode.
	 */
	(void)getgrgid(0);
	(void)setgroupent(1);
	(void)getpwuid(0);
	(void)setpassent(1);
	(void)getauevent();
#endif

	if (oflags & AU_OFLAG_XML)
		FUNC1(stdout);

	/* For each of the files passed as arguments dump the contents. */
	if (optind == argc) {
#ifdef HAVE_CAP_ENTER
		retval = cap_enter();
		if (retval != 0 && errno != ENOSYS)
			err(EXIT_FAILURE, "cap_enter");
#endif
		FUNC13(stdin);
		return (1);
	}
	for (i = optind; i < argc; i++) {
		fp = FUNC6(argv[i], "r");
		if (fp == NULL) {
			FUNC12(argv[i]);
			continue;
		}

		/*
		 * If operating with sandboxing, create a sandbox process for
		 * each trail file we operate on.  This avoids the need to do
		 * fancy things with file descriptors, etc, when iterating on
		 * a list of arguments.
		 */
#ifdef HAVE_CAP_ENTER
		childpid = fork();
		if (childpid == 0) {
			/* Child. */
			retval = cap_enter();
			if (retval != 0 && errno != ENOSYS)
				err(EXIT_FAILURE, "cap_enter");
			if (print_tokens(fp) == -1)
				perror(argv[i]);
			exit(0);
		}

		/* Parent.  Await child termination. */
		while ((pid = waitpid(childpid, NULL, 0)) != childpid);
#else
		if (FUNC13(fp) == -1)
			FUNC12(argv[i]);
#endif
		FUNC5(fp);
	}

	if (oflags & AU_OFLAG_XML)
		FUNC0(stdout);

	return (0);
}