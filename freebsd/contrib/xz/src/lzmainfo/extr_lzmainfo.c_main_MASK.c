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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  LOCALEDIR ; 
 int /*<<< orphan*/  O_BINARY ; 
 int /*<<< orphan*/  PACKAGE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC5 (int,char**) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char**) ; 

extern int
FUNC13(int argc, char **argv)
{
	FUNC12(argv);
	FUNC11(PACKAGE, LOCALEDIR);

	FUNC5(argc, argv);

#ifdef TUKLIB_DOSLIKE
	setmode(fileno(stdin), O_BINARY);
#endif

	int ret = EXIT_SUCCESS;

	// We print empty lines around the output only when reading from
	// files specified on the command line. This is due to how
	// LZMA Utils did it.
	if (optind == argc) {
		if (FUNC4("(stdin)", stdin))
			ret = EXIT_FAILURE;
	} else {
		FUNC6("\n");

		do {
			if (FUNC8(argv[optind], "-") == 0) {
				if (FUNC4("(stdin)", stdin))
					ret = EXIT_FAILURE;
			} else {
				FILE *f = FUNC2(argv[optind], "r");
				if (f == NULL) {
					ret = EXIT_FAILURE;
					FUNC3(stderr, "%s: %s: %s\n",
							progname,
							argv[optind],
							FUNC9(errno));
					continue;
				}

				if (FUNC4(argv[optind], f))
					ret = EXIT_FAILURE;

				FUNC6("\n");
				FUNC0(f);
			}
		} while (++optind < argc);
	}

	FUNC10(ret, EXIT_FAILURE, true);
}