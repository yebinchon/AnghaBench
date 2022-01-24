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
 int /*<<< orphan*/  _IONBF ; 
 char* __progname ; 
 int /*<<< orphan*/  data_dir ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int quiet_mode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC5 (char*) ; 
 char* FUNC6 (char*,char) ; 
 int test_number ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int verbose_mode ; 

int
FUNC8(int argc, char **argv)
{
	int ch;

	/* Handle systems without __progname */
	if (__progname == NULL) {
		__progname = FUNC6(argv[0], '/');
		if (__progname == NULL || __progname[1] == '\0')
			__progname = argv[0];	
		else
			__progname++;
		if ((__progname = FUNC5(__progname)) == NULL) {
			FUNC1(stderr, "strdup failed\n");
			FUNC0(1);
		}
	}

	while ((ch = FUNC2(argc, argv, "vqd:")) != -1) {
		switch (ch) {
		case 'd':
			data_dir = optarg;
			break;
		case 'q':
			verbose_mode = 0;
			quiet_mode = 1;
			break;
		case 'v':
			verbose_mode = 1;
			quiet_mode = 0;
			break;
		default:
			FUNC1(stderr, "Unrecognised command line option\n");
			FUNC1(stderr, "Usage: %s [-v]\n", __progname);
			FUNC0(1);
		}
	}
	FUNC4(stdout, NULL, _IONBF, 0);
	if (!quiet_mode)
		FUNC3("%s: ", __progname);
	if (verbose_mode)
		FUNC3("\n");

	FUNC7();

	if (!quiet_mode)
		FUNC3(" %u tests ok\n", test_number);
	return 0;
}