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
 int /*<<< orphan*/  FUNC1 () ; 
 int debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exit_code ; 
 int file_count ; 
 char** file_list ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  keep_list ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  skip_list ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

int
FUNC8(int argc, char *argv[])
{
	int ch;

	while ((ch = FUNC4(argc, argv, "dk:s:")) != -1)
		switch (ch) {
		case 'd':
#ifdef DEBUG
			debug = 1;
#else
			FUNC7("debugging not compiled in, -d ignored");
#endif
			break;
		case 'k':
			FUNC6(&keep_list, optarg, 0);
			break;
		case 's':
			FUNC6(&skip_list, optarg, 0);
			break;
		default:
			/* XXX should crunch it? */
			break;
		}
	argc -= optind;
	argv += optind;

	file_count = argc;
	file_list = argv;

	FUNC0((stderr, "parse_args\n"));
	FUNC5();
	FUNC0((stderr, "initialize\n"));
	FUNC1();
	FUNC0((stderr, "crunch_all_files\n"));
	FUNC3();
	FUNC0((stderr, "generate_ordering\n"));

	FUNC2(exit_code);
}