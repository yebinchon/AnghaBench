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
#define  CREATE 132 
#define  DESTROY 131 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  G_GATE_FLAG_READONLY ; 
 int /*<<< orphan*/  G_GATE_FLAG_WRITEONLY ; 
#define  LIST 130 
#define  RESCUE 129 
#define  UNSET 128 
 int action ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flags ; 
 int force ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int g_gate_verbose ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int,char**,char*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 char* path ; 
 void* sectorsize ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int FUNC12 (char*,int /*<<< orphan*/ *,int) ; 
 void* FUNC13 (char*,int /*<<< orphan*/ *,int) ; 
 void* timeout ; 
 int unit ; 
 int /*<<< orphan*/  FUNC14 () ; 

int
FUNC15(int argc, char *argv[])
{

	if (argc < 2)
		FUNC14();
	if (FUNC11(argv[1], "create") == 0)
		action = CREATE;
	else if (FUNC11(argv[1], "rescue") == 0)
		action = RESCUE;
	else if (FUNC11(argv[1], "destroy") == 0)
		action = DESTROY;
	else if (FUNC11(argv[1], "list") == 0)
		action = LIST;
	else
		FUNC14();
	argc -= 1;
	argv += 1;
	for (;;) {
		int ch;

		ch = FUNC10(argc, argv, "fo:s:t:u:v");
		if (ch == -1)
			break;
		switch (ch) {
		case 'f':
			if (action != DESTROY)
				FUNC14();
			force = 1;
			break;
		case 'o':
			if (action != CREATE && action != RESCUE)
				FUNC14();
			if (FUNC11("ro", optarg) == 0)
				flags = G_GATE_FLAG_READONLY;
			else if (FUNC11("wo", optarg) == 0)
				flags = G_GATE_FLAG_WRITEONLY;
			else if (FUNC11("rw", optarg) == 0)
				flags = 0;
			else {
				FUNC0(EXIT_FAILURE,
				    "Invalid argument for '-o' option.");
			}
			break;
		case 's':
			if (action != CREATE)
				FUNC14();
			errno = 0;
			sectorsize = FUNC13(optarg, NULL, 10);
			if (sectorsize == 0 && errno != 0)
				FUNC0(EXIT_FAILURE, "Invalid sectorsize.");
			break;
		case 't':
			if (action != CREATE)
				FUNC14();
			errno = 0;
			timeout = FUNC13(optarg, NULL, 10);
			if (timeout == 0 && errno != 0)
				FUNC0(EXIT_FAILURE, "Invalid timeout.");
			break;
		case 'u':
			errno = 0;
			unit = FUNC12(optarg, NULL, 10);
			if (unit == 0 && errno != 0)
				FUNC0(EXIT_FAILURE, "Invalid unit number.");
			break;
		case 'v':
			if (action == DESTROY)
				FUNC14();
			g_gate_verbose++;
			break;
		default:
			FUNC14();
		}
	}
	argc -= optind;
	argv += optind;

	switch (action) {
	case CREATE:
		if (argc != 1)
			FUNC14();
		FUNC6();
		FUNC7();
		path = argv[0];
		FUNC8();
		break;
	case RESCUE:
		if (argc != 1)
			FUNC14();
		if (unit == -1) {
			FUNC2(stderr, "Required unit number.\n");
			FUNC14();
		}
		FUNC7();
		path = argv[0];
		FUNC9();
		break;
	case DESTROY:
		if (unit == -1) {
			FUNC2(stderr, "Required unit number.\n");
			FUNC14();
		}
		g_gate_verbose = 1;
		FUNC7();
		FUNC4(unit, force);
		break;
	case LIST:
		FUNC5(unit, g_gate_verbose);
		break;
	case UNSET:
	default:
		FUNC14();
	}
	FUNC3();
	FUNC1(EXIT_SUCCESS);
}