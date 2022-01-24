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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _PATH_ELF32_HINTS ; 
 int /*<<< orphan*/  _PATH_ELFSOFT_HINTS ; 
 int /*<<< orphan*/  _PATH_ELF_HINTS ; 
 int /*<<< orphan*/  _PATH_LD32_HINTS ; 
 int /*<<< orphan*/  _PATH_LD_HINTS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 () ; 
 char* FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 char* dir_list ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int,char**,char*) ; 
 int /*<<< orphan*/  hints_file ; 
 int insecure ; 
 int justread ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int merge ; 
 int n_search_dirs ; 
 int nostd ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int FUNC10 () ; 
 int rescan ; 
 int /*<<< orphan*/ * search_dirs ; 
 int FUNC11 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 char* FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,char**,int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int verbose ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 

int
FUNC19(int argc, char **argv)
{
	int		i, c;
	int		rval = 0;
	int		is_aout = 0;
	int		is_32 = 0;
	int		is_soft = 0;

	while (argc > 1) {
		if (FUNC13(argv[1], "-aout") == 0) {
			is_aout = 1;
			argc--;
			argv++;
		} else if (FUNC13(argv[1], "-elf") == 0) {
			is_aout = 0;
			argc--;
			argv++;
		} else if (FUNC13(argv[1], "-32") == 0) {
			is_32 = 1;
			argc--;
			argv++;
		} else if (FUNC13(argv[1], "-soft") == 0) {
			is_soft = 1;
			argc--;
			argv++;
		} else {
			break;
		}
	}

	if (is_soft)
		hints_file = _PATH_ELFSOFT_HINTS;	/* Never will have a.out softfloat */
	else if (is_32)
		hints_file = is_aout ? _PATH_LD32_HINTS : _PATH_ELF32_HINTS;
	else
		hints_file = is_aout ? _PATH_LD_HINTS : _PATH_ELF_HINTS;
	if (argc == 1)
		rescan = 1;
	else while((c = FUNC7(argc, argv, "Rf:imrsv")) != -1) {
		switch (c) {
		case 'R':
			rescan = 1;
			break;
		case 'f':
			hints_file = optarg;
			break;
		case 'i':
			insecure = 1;
			break;
		case 'm':
			merge = 1;
			break;
		case 'r':
			justread = 1;
			break;
		case 's':
			nostd = 1;
			break;
		case 'v':
			verbose = 1;
			break;
		default:
			FUNC16();
			break;
		}
	}

	if (!is_aout) {
		if (justread)
			FUNC8(hints_file);
		else
			FUNC15(hints_file, argc - optind,
			    argv + optind, merge || rescan);
		return 0;
	}

	/* Here begins the aout libs processing */
	dir_list = FUNC14("");

	if (justread || merge || rescan) {
		if ((rval = FUNC10()) != 0)
			return rval;
	}

	if (!nostd && !merge && !rescan)
		FUNC12();

	/* Add any directories/files from the command line */
	if (!justread) {
		for (i = optind; i < argc; i++) {
			struct stat stbuf;

			if (FUNC11(argv[i], &stbuf) == -1) {
				FUNC17("%s", argv[i]);
				rval = -1;
			} else if (FUNC13(argv[i], "/usr/lib") == 0) {
				FUNC18("WARNING! '%s' can not be used", argv[i]);
				rval = -1;
			} else {
				/*
				 * See if this is a directory-containing
				 * file instead of a directory
				 */
				if (FUNC0(stbuf.st_mode))
					rval |= FUNC5(argv[i], 0);
				else
					FUNC1(argv[i]);
			}
		}
	}

	for (i = 0; i < n_search_dirs; i++) {
		char *cp = FUNC3(dir_list, *dir_list?":":"", search_dirs[i]);
		FUNC6(dir_list);
		dir_list = cp;
	}

	if (justread) {
		FUNC9();
		return 0;
	}

	for (i = 0; i < n_search_dirs; i++)
		rval |= FUNC4(search_dirs[i], 1);

	rval |= FUNC2();

	return rval;
}