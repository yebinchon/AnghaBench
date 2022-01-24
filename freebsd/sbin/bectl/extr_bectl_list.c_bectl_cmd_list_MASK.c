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
struct printc {int show_all_datasets; int show_space; int script_fmt; int show_snaps; } ;
typedef  int /*<<< orphan*/  pc ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  be ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct printc*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int,char**,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct printc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct printc*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC14 (char*) ; 
 int FUNC15 (int) ; 

int
FUNC16(int argc, char *argv[])
{
	struct printc pc;
	nvpair_t *cur;
	nvlist_t *dsprops, *props;
	int opt, printed;
	char *column;
	bool reverse;

	column = NULL;
	props = NULL;
	printed = 0;
	FUNC3(&pc, sizeof(pc));
	reverse = false;
	while ((opt = FUNC6(argc, argv, "aDHsc:C:")) != -1) {
		switch (opt) {
		case 'a':
			pc.show_all_datasets = true;
			break;
		case 'D':
			pc.show_space = true;
			break;
		case 'H':
			pc.script_fmt = true;
			break;
		case 's':
			pc.show_snaps = true;
			break;
		case 'c':
			if (column != NULL)
				FUNC5(column);
			column = FUNC14(optarg);
			reverse = false;
			break;
		case 'C':
			if (column != NULL)
				FUNC5(column);
			column = FUNC14(optarg);
			reverse = true;
			break;
		default:
			FUNC4(stderr, "bectl list: unknown option '-%c'\n",
			    optopt);
			return (FUNC15(false));
		}
	}

	argc -= optind;

	if (argc != 0) {
		FUNC4(stderr, "bectl list: extra argument provided\n");
		return (FUNC15(false));
	}

	if (FUNC1(&props) != 0) {
		FUNC4(stderr, "bectl list: failed to allocate prop nvlist\n");
		return (1);
	}
	if (FUNC0(be, props) != 0) {
		/* XXX TODO: Real errors */
		FUNC4(stderr, "bectl list: failed to fetch boot environments\n");
		return (1);
	}

	/* List boot environments in alphabetical order by default */
	if (column == NULL)
		column = FUNC14("name");

	FUNC13(props, column, reverse);

	/* Force -D off if either -a or -s are specified */
	if (pc.show_all_datasets || pc.show_snaps)
		pc.show_space = false;
	if (!pc.script_fmt)
		FUNC10(props, &pc);

	/* Print boot environments */
	for (cur = FUNC7(props, NULL); cur != NULL;
	    cur = FUNC7(props, cur)) {
		FUNC9(cur, &dsprops);

		if (printed > 0 && (pc.show_all_datasets || pc.show_snaps))
			FUNC12("\n");

		FUNC11(FUNC8(cur), dsprops, &pc);
		printed++;
	}

	FUNC5(column);
	FUNC2(props);

	return (0);
}