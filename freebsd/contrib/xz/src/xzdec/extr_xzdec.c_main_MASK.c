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
typedef  int /*<<< orphan*/  lzma_stream ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  LZMA_STREAM_INIT ; 
 int /*<<< orphan*/  O_BINARY ; 
 int /*<<< orphan*/  display_errors ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC6 (int,char**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

int
FUNC13(int argc, char **argv)
{
	// Initialize progname which we will be used in error messages.
	FUNC11(argv);

	// Parse the command line options.
	FUNC6(argc, argv);

	// The same lzma_stream is used for all files that we decode. This way
	// we don't need to reallocate memory for every file if they use same
	// compression settings.
	lzma_stream strm = LZMA_STREAM_INIT;

	// Some systems require setting stdin and stdout to binary mode.
#ifdef TUKLIB_DOSLIKE
	setmode(fileno(stdin), O_BINARY);
	setmode(fileno(stdout), O_BINARY);
#endif

	if (optind == argc) {
		// No filenames given, decode from stdin.
		FUNC12(&strm, stdin, "(stdin)");
	} else {
		// Loop through the filenames given on the command line.
		do {
			// "-" indicates stdin.
			if (FUNC8(argv[optind], "-") == 0) {
				FUNC12(&strm, stdin, "(stdin)");
			} else {
				FILE *file = FUNC3(argv[optind], "rb");
				if (file == NULL) {
					FUNC5("%s: %s", argv[optind],
							FUNC9(errno));
					FUNC0(EXIT_FAILURE);
				}

				FUNC12(&strm, file, argv[optind]);
				FUNC1(file);
			}
		} while (++optind < argc);
	}

#ifndef NDEBUG
	// Free the memory only when debugging. Freeing wastes some time,
	// but allows detecting possible memory leaks with Valgrind.
	FUNC4(&strm);
#endif

	FUNC10(EXIT_SUCCESS, EXIT_FAILURE, display_errors);
}