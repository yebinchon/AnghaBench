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
 int /*<<< orphan*/  FUNC1 (int,char* const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char* const*) ; 
 int /*<<< orphan*/  FUNC3 (int,char* const*) ; 
 int /*<<< orphan*/  FUNC4 (int,char* const*) ; 
 int /*<<< orphan*/  FUNC5 (int,char* const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,char* const*) ; 
 int /*<<< orphan*/  FUNC8 (int,char* const*) ; 
 int /*<<< orphan*/  FUNC9 (int,char* const*) ; 
 int /*<<< orphan*/  FUNC10 (int,char* const*,int) ; 
 int /*<<< orphan*/  FUNC11 (int,char* const*) ; 
 int /*<<< orphan*/  FUNC12 (int,char* const*) ; 
 int /*<<< orphan*/  FUNC13 (int,char* const*) ; 
 int /*<<< orphan*/  FUNC14 (int,char* const*) ; 
 int /*<<< orphan*/  FUNC15 (int,char* const*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int,char* const*) ; 
 int /*<<< orphan*/  FUNC18 (int,char* const*) ; 
 int /*<<< orphan*/  FUNC19 (int,char* const*) ; 
 int /*<<< orphan*/  FUNC20 (int,char* const*) ; 
 int /*<<< orphan*/  FUNC21 (char*,char* const) ; 
 int /*<<< orphan*/  FUNC22 (char* const,char*) ; 

__attribute__((used)) static void
FUNC23(int argc, char * const *argv)
{

	if (argc <= 0)
		return;

	if (!FUNC22(argv[0], "create"))
		FUNC3(argc, argv);
	else if (!FUNC22(argv[0], "exit") || !FUNC22(argv[0], "quit"))
		FUNC0(0);
	else if (!FUNC22(argv[0], "attach"))
		FUNC1(argc, argv);
	else if (!FUNC22(argv[0], "detach"))
		FUNC4(argc, argv);
	else if (!FUNC22(argv[0], "concat"))
		FUNC2(argc, argv);
	else if (!FUNC22(argv[0], "grow"))
		FUNC5(argc, argv);
	else if (!FUNC22(argv[0], "help"))
		FUNC6();
	else if (!FUNC22(argv[0], "list") || !FUNC22(argv[0], "l"))
		FUNC7(argc, argv);
	else if (!FUNC22(argv[0], "ld"))
		FUNC7(argc, argv);
	else if (!FUNC22(argv[0], "lp"))
		FUNC7(argc, argv);
	else if (!FUNC22(argv[0], "ls"))
		FUNC7(argc, argv);
	else if (!FUNC22(argv[0], "lv"))
		FUNC7(argc, argv);
	else if (!FUNC22(argv[0], "mirror"))
		FUNC8(argc, argv);
	else if (!FUNC22(argv[0], "move"))
		FUNC9(argc, argv);
	else if (!FUNC22(argv[0], "mv"))
		FUNC9(argc, argv);
	else if (!FUNC22(argv[0], "printconfig"))
		FUNC11(argc, argv);
	else if (!FUNC22(argv[0], "raid5"))
		FUNC12(argc, argv);
	else if (!FUNC22(argv[0], "rename"))
		FUNC13(argc, argv);
	else if (!FUNC22(argv[0], "resetconfig"))
		FUNC14(argc, argv);
	else if (!FUNC22(argv[0], "rm"))
		FUNC15(argc, argv);
	else if (!FUNC22(argv[0], "saveconfig"))
		FUNC16();
	else if (!FUNC22(argv[0], "setstate"))
		FUNC17(argc, argv);
	else if (!FUNC22(argv[0], "start"))
		FUNC18(argc, argv);
	else if (!FUNC22(argv[0], "stop"))
		FUNC19(argc, argv);
	else if (!FUNC22(argv[0], "stripe"))
		FUNC20(argc, argv);
	else if (!FUNC22(argv[0], "checkparity"))
		FUNC10(argc, argv, 0);
	else if (!FUNC22(argv[0], "rebuildparity"))
		FUNC10(argc, argv, 1);
	else
		FUNC21("unknown command '%s'\n", argv[0]);
}