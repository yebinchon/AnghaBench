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
#define  EEXIST 129 
#define  ENOEXEC 128 
 int errno ; 
 int FUNC0 (int,char**,char*) ; 
 int FUNC1 (char*) ; 
 scalar_t__ optind ; 
 scalar_t__ FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

int
FUNC7(int argc, char** argv)
{
	int c;
	int check_loaded;
	int errors;
	int fileid;
	int quiet;
	int verbose;

	errors = 0;
	verbose = 0;
	quiet = 0;
	check_loaded = 0;

	while ((c = FUNC0(argc, argv, "nqv")) != -1) {
		switch (c) {
		case 'q':
			quiet = 1;
			verbose = 0;
			break;
		case 'v':
			verbose = 1;
			quiet = 0;
			break;
		case 'n':
			check_loaded = 1;
			break;
		default:
			FUNC4();
		}
	}
	argc -= optind;
	argv += optind;

	if (argc == 0)
		FUNC4();

	while (argc-- != 0) {
		if (FUNC2(argv[0], quiet) == 0) {
			fileid = FUNC1(argv[0]);
			if (fileid < 0) {
				if (check_loaded != 0 && errno == EEXIST) {
					if (verbose)
						FUNC3("%s is already "
						    "loaded\n", argv[0]);
				} else {
					switch (errno) {
					case EEXIST:
						FUNC6("can't load %s: module "
						    "already loaded or "
						    "in kernel", argv[0]);
						break;
					case ENOEXEC:
						FUNC6("an error occurred while "
						    "loading module %s. "
						    "Please check dmesg(8) for "
						    "more details.", argv[0]);
						break;
					default:
						FUNC5("can't load %s", argv[0]);
						break;
					}
					errors++;
				}
			} else {
				if (verbose)
					FUNC3("Loaded %s, id=%d\n", argv[0],
					    fileid);
			}
		} else
			errors++;
		argv++;
	}

	return (errors ? 1 : 0);
}