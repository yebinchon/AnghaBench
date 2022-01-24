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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static int
FUNC8(char* argv[], int argc, bool *use_pathp, int *fdp)
{
	const char *arg;
	int fd, i, j, arglen;
	char opt;

	FUNC2("Parsing command-line arguments");
	*use_pathp = false;
	*fdp = -1;

	for (i = 1; i < argc; i++ ) {
		arg = argv[i];
		FUNC2("argv[%d]: '%s'", i, arg);

		/*
		 * rtld arguments end with an explicit "--" or with the first
		 * non-prefixed argument.
		 */
		if (FUNC6(arg, "--") == 0) {
			i++;
			break;
		}
		if (arg[0] != '-')
			break;

		/*
		 * All other arguments are single-character options that can
		 * be combined, so we need to search through `arg` for them.
		 */
		arglen = FUNC7(arg);
		for (j = 1; j < arglen; j++) {
			opt = arg[j];
			if (opt == 'h') {
				FUNC4(argv[0]);
				FUNC0(0);
			} else if (opt == 'f') {
			/*
			 * -f XX can be used to specify a descriptor for the
			 * binary named at the command line (i.e., the later
			 * argument will specify the process name but the
			 * descriptor is what will actually be executed)
			 */
			if (j != arglen - 1) {
				/* -f must be the last option in, e.g., -abcf */
				FUNC1("Invalid options: %s", arg);
				FUNC5();
			}
			i++;
			fd = FUNC3(argv[i]);
			if (fd == -1) {
				FUNC1("Invalid file descriptor: '%s'",
				    argv[i]);
				FUNC5();
			}
			*fdp = fd;
			break;
			} else if (opt == 'p') {
				*use_pathp = true;
			} else {
				FUNC1("Invalid argument: '%s'", arg);
				FUNC4(argv[0]);
				FUNC5();
			}
		}
	}

	return (i);
}