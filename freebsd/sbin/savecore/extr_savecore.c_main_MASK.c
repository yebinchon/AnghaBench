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
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_CREATE ; 
 int /*<<< orphan*/  CAP_FCNTL ; 
 int /*<<< orphan*/  CAP_FSTATAT ; 
 int /*<<< orphan*/  CAP_FSTATFS ; 
 int /*<<< orphan*/  CAP_FTRUNCATE ; 
 int /*<<< orphan*/  CAP_PREAD ; 
 int /*<<< orphan*/  CAP_SYMLINKAT ; 
 int /*<<< orphan*/  CAP_UNLINKAT ; 
 int /*<<< orphan*/  CAP_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char const*,int,char*) ; 
 int /*<<< orphan*/  LOG_DAEMON ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_PERROR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int O_DIRECTORY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  SIGINFO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*) ; 
 int checkfor ; 
 int clear ; 
 int compress ; 
 char** FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int force ; 
 int FUNC7 (int,char**,char*) ; 
 int /*<<< orphan*/  infohandler ; 
 int /*<<< orphan*/  FUNC8 (int,char**) ; 
 int keep ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ maxdumps ; 
 scalar_t__ nerr ; 
 scalar_t__ nfound ; 
 scalar_t__ nsaved ; 
 int FUNC10 (char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int verbose ; 
 int FUNC15 (int,char**) ; 

int
FUNC16(int argc, char **argv)
{
	cap_rights_t rights;
	const char *savedir;
	int i, ch, error, savedirfd;

	checkfor = compress = clear = force = keep = verbose = 0;
	nfound = nsaved = nerr = 0;
	savedir = ".";

	FUNC11("savecore", LOG_PERROR, LOG_DAEMON);
	FUNC13(SIGINFO, infohandler);

	argc = FUNC15(argc, argv);
	if (argc < 0)
		FUNC6(1);

	while ((ch = FUNC7(argc, argv, "Ccfkm:vz")) != -1)
		switch(ch) {
		case 'C':
			checkfor = 1;
			break;
		case 'c':
			clear = 1;
			break;
		case 'f':
			force = 1;
			break;
		case 'k':
			keep = 1;
			break;
		case 'm':
			maxdumps = FUNC1(optarg);
			if (maxdumps <= 0) {
				FUNC9(LOG_ERR, "Invalid maxdump value");
				FUNC6(1);
			}
			break;
		case 'v':
			verbose++;
			break;
		case 'z':
			compress = 1;
			break;
		case '?':
		default:
			FUNC14();
		}
	if (checkfor && (clear || force || keep))
		FUNC14();
	if (clear && (compress || keep))
		FUNC14();
	if (maxdumps > 0 && (checkfor || clear))
		FUNC14();
	argc -= optind;
	argv += optind;
	if (argc >= 1 && !checkfor && !clear) {
		error = FUNC4(argv[0]);
		if (error) {
			FUNC9(LOG_ERR, "chdir(%s): %m", argv[0]);
			FUNC6(1);
		}
		savedir = argv[0];
		argc--;
		argv++;
	}
	if (argc == 0)
		argv = FUNC5(&argc);

	savedirfd = FUNC10(savedir, O_RDONLY | O_DIRECTORY);
	if (savedirfd < 0) {
		FUNC9(LOG_ERR, "open(%s): %m", savedir);
		FUNC6(1);
	}
	(void)FUNC2(&rights, CAP_CREATE, CAP_FCNTL, CAP_FSTATAT,
	    CAP_FSTATFS, CAP_PREAD, CAP_SYMLINKAT, CAP_FTRUNCATE, CAP_UNLINKAT,
	    CAP_WRITE);
	if (FUNC3(savedirfd, &rights) < 0) {
		FUNC9(LOG_ERR, "cap_rights_limit(): %m");
		FUNC6(1);
	}

	/* Enter capability mode. */
	FUNC8(argc, argv);

	for (i = 0; i < argc; i++)
		FUNC0(savedir, savedirfd, argv[i]);

	/* Emit minimal output. */
	if (nfound == 0) {
		if (checkfor) {
			if (verbose)
				FUNC12("No dump exists\n");
			FUNC6(1);
		}
		if (verbose)
			FUNC9(LOG_WARNING, "no dumps found");
	} else if (nsaved == 0) {
		if (nerr != 0) {
			if (verbose)
				FUNC9(LOG_WARNING,
				    "unsaved dumps found but not saved");
			FUNC6(1);
		} else if (verbose)
			FUNC9(LOG_WARNING, "no unsaved dumps found");
	}

	return (0);
}