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
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int FUNC15 (int /*<<< orphan*/ *,char*) ; 
 int FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int FUNC17 (int /*<<< orphan*/ *,char*) ; 
 int FUNC18 (int /*<<< orphan*/ *,char*) ; 
 int FUNC19 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 

int
FUNC28(void)
{
	nvlist_t *nvl;

	FUNC27("1..232\n");

	nvl = FUNC8(0);

	FUNC0(!FUNC12(nvl, "nvlist/null"));
	FUNC0(!FUNC16(nvl, "nvlist/null"));
	FUNC0(!FUNC14(nvl, "nvlist/null"));
	FUNC0(!FUNC17(nvl, "nvlist/null"));
	FUNC0(!FUNC19(nvl, "nvlist/null"));
	FUNC0(!FUNC18(nvl, "nvlist/null"));
	FUNC0(!FUNC15(nvl, "nvlist/null"));
	FUNC0(!FUNC13(nvl, "nvlist/null"));
	FUNC4(nvl, "nvlist/null");
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC12(nvl, "nvlist/null"));
	FUNC0(FUNC16(nvl, "nvlist/null"));
	FUNC0(!FUNC14(nvl, "nvlist/null"));
	FUNC0(!FUNC17(nvl, "nvlist/null"));
	FUNC0(!FUNC19(nvl, "nvlist/null"));
	FUNC0(!FUNC18(nvl, "nvlist/null"));
	FUNC0(!FUNC15(nvl, "nvlist/null"));
	FUNC0(!FUNC13(nvl, "nvlist/null"));

	FUNC0(!FUNC12(nvl, "nvlist/bool"));
	FUNC0(!FUNC16(nvl, "nvlist/bool"));
	FUNC0(!FUNC14(nvl, "nvlist/bool"));
	FUNC0(!FUNC17(nvl, "nvlist/bool"));
	FUNC0(!FUNC19(nvl, "nvlist/bool"));
	FUNC0(!FUNC18(nvl, "nvlist/bool"));
	FUNC0(!FUNC15(nvl, "nvlist/bool"));
	FUNC0(!FUNC13(nvl, "nvlist/bool"));
	FUNC2(nvl, "nvlist/bool", true);
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC12(nvl, "nvlist/bool"));
	FUNC0(!FUNC16(nvl, "nvlist/bool"));
	FUNC0(FUNC14(nvl, "nvlist/bool"));
	FUNC0(!FUNC17(nvl, "nvlist/bool"));
	FUNC0(!FUNC19(nvl, "nvlist/bool"));
	FUNC0(!FUNC18(nvl, "nvlist/bool"));
	FUNC0(!FUNC15(nvl, "nvlist/bool"));
	FUNC0(!FUNC13(nvl, "nvlist/bool"));

	FUNC0(!FUNC12(nvl, "nvlist/number"));
	FUNC0(!FUNC16(nvl, "nvlist/number"));
	FUNC0(!FUNC14(nvl, "nvlist/number"));
	FUNC0(!FUNC17(nvl, "nvlist/number"));
	FUNC0(!FUNC19(nvl, "nvlist/number"));
	FUNC0(!FUNC18(nvl, "nvlist/number"));
	FUNC0(!FUNC15(nvl, "nvlist/number"));
	FUNC0(!FUNC13(nvl, "nvlist/number"));
	FUNC5(nvl, "nvlist/number", 0);
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC12(nvl, "nvlist/number"));
	FUNC0(!FUNC16(nvl, "nvlist/number"));
	FUNC0(!FUNC14(nvl, "nvlist/number"));
	FUNC0(FUNC17(nvl, "nvlist/number"));
	FUNC0(!FUNC19(nvl, "nvlist/number"));
	FUNC0(!FUNC18(nvl, "nvlist/number"));
	FUNC0(!FUNC15(nvl, "nvlist/number"));
	FUNC0(!FUNC13(nvl, "nvlist/number"));

	FUNC0(!FUNC12(nvl, "nvlist/string"));
	FUNC0(!FUNC16(nvl, "nvlist/string"));
	FUNC0(!FUNC14(nvl, "nvlist/string"));
	FUNC0(!FUNC17(nvl, "nvlist/string"));
	FUNC0(!FUNC19(nvl, "nvlist/string"));
	FUNC0(!FUNC18(nvl, "nvlist/string"));
	FUNC0(!FUNC15(nvl, "nvlist/string"));
	FUNC0(!FUNC13(nvl, "nvlist/string"));
	FUNC7(nvl, "nvlist/string", "test");
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC12(nvl, "nvlist/string"));
	FUNC0(!FUNC16(nvl, "nvlist/string"));
	FUNC0(!FUNC14(nvl, "nvlist/string"));
	FUNC0(!FUNC17(nvl, "nvlist/string"));
	FUNC0(FUNC19(nvl, "nvlist/string"));
	FUNC0(!FUNC18(nvl, "nvlist/string"));
	FUNC0(!FUNC15(nvl, "nvlist/string"));
	FUNC0(!FUNC13(nvl, "nvlist/string"));

	FUNC0(!FUNC12(nvl, "nvlist/nvlist"));
	FUNC0(!FUNC16(nvl, "nvlist/nvlist"));
	FUNC0(!FUNC14(nvl, "nvlist/nvlist"));
	FUNC0(!FUNC17(nvl, "nvlist/nvlist"));
	FUNC0(!FUNC19(nvl, "nvlist/nvlist"));
	FUNC0(!FUNC18(nvl, "nvlist/nvlist"));
	FUNC0(!FUNC15(nvl, "nvlist/nvlist"));
	FUNC0(!FUNC13(nvl, "nvlist/nvlist"));
	FUNC6(nvl, "nvlist/nvlist", nvl);
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC12(nvl, "nvlist/nvlist"));
	FUNC0(!FUNC16(nvl, "nvlist/nvlist"));
	FUNC0(!FUNC14(nvl, "nvlist/nvlist"));
	FUNC0(!FUNC17(nvl, "nvlist/nvlist"));
	FUNC0(!FUNC19(nvl, "nvlist/nvlist"));
	FUNC0(FUNC18(nvl, "nvlist/nvlist"));
	FUNC0(!FUNC15(nvl, "nvlist/nvlist"));
	FUNC0(!FUNC13(nvl, "nvlist/nvlist"));

	FUNC0(!FUNC12(nvl, "nvlist/descriptor"));
	FUNC0(!FUNC16(nvl, "nvlist/descriptor"));
	FUNC0(!FUNC14(nvl, "nvlist/descriptor"));
	FUNC0(!FUNC17(nvl, "nvlist/descriptor"));
	FUNC0(!FUNC19(nvl, "nvlist/descriptor"));
	FUNC0(!FUNC18(nvl, "nvlist/descriptor"));
	FUNC0(!FUNC15(nvl, "nvlist/descriptor"));
	FUNC0(!FUNC13(nvl, "nvlist/descriptor"));
	FUNC3(nvl, "nvlist/descriptor", STDERR_FILENO);
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC12(nvl, "nvlist/descriptor"));
	FUNC0(!FUNC16(nvl, "nvlist/descriptor"));
	FUNC0(!FUNC14(nvl, "nvlist/descriptor"));
	FUNC0(!FUNC17(nvl, "nvlist/descriptor"));
	FUNC0(!FUNC19(nvl, "nvlist/descriptor"));
	FUNC0(!FUNC18(nvl, "nvlist/descriptor"));
	FUNC0(FUNC15(nvl, "nvlist/descriptor"));
	FUNC0(!FUNC13(nvl, "nvlist/descriptor"));

	FUNC0(!FUNC12(nvl, "nvlist/binary"));
	FUNC0(!FUNC16(nvl, "nvlist/binary"));
	FUNC0(!FUNC14(nvl, "nvlist/binary"));
	FUNC0(!FUNC17(nvl, "nvlist/binary"));
	FUNC0(!FUNC19(nvl, "nvlist/binary"));
	FUNC0(!FUNC18(nvl, "nvlist/binary"));
	FUNC0(!FUNC15(nvl, "nvlist/binary"));
	FUNC0(!FUNC13(nvl, "nvlist/binary"));
	FUNC1(nvl, "nvlist/binary", "test", 4);
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC12(nvl, "nvlist/binary"));
	FUNC0(!FUNC16(nvl, "nvlist/binary"));
	FUNC0(!FUNC14(nvl, "nvlist/binary"));
	FUNC0(!FUNC17(nvl, "nvlist/binary"));
	FUNC0(!FUNC19(nvl, "nvlist/binary"));
	FUNC0(!FUNC18(nvl, "nvlist/binary"));
	FUNC0(!FUNC15(nvl, "nvlist/binary"));
	FUNC0(FUNC13(nvl, "nvlist/binary"));

	FUNC0(FUNC12(nvl, "nvlist/null"));
	FUNC0(FUNC12(nvl, "nvlist/bool"));
	FUNC0(FUNC12(nvl, "nvlist/number"));
	FUNC0(FUNC12(nvl, "nvlist/string"));
	FUNC0(FUNC12(nvl, "nvlist/nvlist"));
	FUNC0(FUNC12(nvl, "nvlist/descriptor"));
	FUNC0(FUNC12(nvl, "nvlist/binary"));
	FUNC0(FUNC16(nvl, "nvlist/null"));
	FUNC0(FUNC14(nvl, "nvlist/bool"));
	FUNC0(FUNC17(nvl, "nvlist/number"));
	FUNC0(FUNC19(nvl, "nvlist/string"));
	FUNC0(FUNC18(nvl, "nvlist/nvlist"));
	FUNC0(FUNC15(nvl, "nvlist/descriptor"));
	FUNC0(FUNC13(nvl, "nvlist/binary"));

	FUNC23(nvl, "nvlist/null");
	FUNC0(!FUNC12(nvl, "nvlist/null"));
	FUNC0(FUNC12(nvl, "nvlist/bool"));
	FUNC0(FUNC12(nvl, "nvlist/number"));
	FUNC0(FUNC12(nvl, "nvlist/string"));
	FUNC0(FUNC12(nvl, "nvlist/nvlist"));
	FUNC0(FUNC12(nvl, "nvlist/descriptor"));
	FUNC0(FUNC12(nvl, "nvlist/binary"));
	FUNC0(!FUNC16(nvl, "nvlist/null"));
	FUNC0(FUNC14(nvl, "nvlist/bool"));
	FUNC0(FUNC17(nvl, "nvlist/number"));
	FUNC0(FUNC19(nvl, "nvlist/string"));
	FUNC0(FUNC18(nvl, "nvlist/nvlist"));
	FUNC0(FUNC15(nvl, "nvlist/descriptor"));
	FUNC0(FUNC13(nvl, "nvlist/binary"));

	FUNC21(nvl, "nvlist/bool");
	FUNC0(!FUNC12(nvl, "nvlist/null"));
	FUNC0(!FUNC12(nvl, "nvlist/bool"));
	FUNC0(FUNC12(nvl, "nvlist/number"));
	FUNC0(FUNC12(nvl, "nvlist/string"));
	FUNC0(FUNC12(nvl, "nvlist/nvlist"));
	FUNC0(FUNC12(nvl, "nvlist/descriptor"));
	FUNC0(FUNC12(nvl, "nvlist/binary"));
	FUNC0(!FUNC16(nvl, "nvlist/null"));
	FUNC0(!FUNC14(nvl, "nvlist/bool"));
	FUNC0(FUNC17(nvl, "nvlist/number"));
	FUNC0(FUNC19(nvl, "nvlist/string"));
	FUNC0(FUNC18(nvl, "nvlist/nvlist"));
	FUNC0(FUNC15(nvl, "nvlist/descriptor"));
	FUNC0(FUNC13(nvl, "nvlist/binary"));

	FUNC24(nvl, "nvlist/number");
	FUNC0(!FUNC12(nvl, "nvlist/null"));
	FUNC0(!FUNC12(nvl, "nvlist/bool"));
	FUNC0(!FUNC12(nvl, "nvlist/number"));
	FUNC0(FUNC12(nvl, "nvlist/string"));
	FUNC0(FUNC12(nvl, "nvlist/nvlist"));
	FUNC0(FUNC12(nvl, "nvlist/descriptor"));
	FUNC0(FUNC12(nvl, "nvlist/binary"));
	FUNC0(!FUNC16(nvl, "nvlist/null"));
	FUNC0(!FUNC14(nvl, "nvlist/bool"));
	FUNC0(!FUNC17(nvl, "nvlist/number"));
	FUNC0(FUNC19(nvl, "nvlist/string"));
	FUNC0(FUNC18(nvl, "nvlist/nvlist"));
	FUNC0(FUNC15(nvl, "nvlist/descriptor"));
	FUNC0(FUNC13(nvl, "nvlist/binary"));

	FUNC26(nvl, "nvlist/string");
	FUNC0(!FUNC12(nvl, "nvlist/null"));
	FUNC0(!FUNC12(nvl, "nvlist/bool"));
	FUNC0(!FUNC12(nvl, "nvlist/number"));
	FUNC0(!FUNC12(nvl, "nvlist/string"));
	FUNC0(FUNC12(nvl, "nvlist/nvlist"));
	FUNC0(FUNC12(nvl, "nvlist/descriptor"));
	FUNC0(FUNC12(nvl, "nvlist/binary"));
	FUNC0(!FUNC16(nvl, "nvlist/null"));
	FUNC0(!FUNC14(nvl, "nvlist/bool"));
	FUNC0(!FUNC17(nvl, "nvlist/number"));
	FUNC0(!FUNC19(nvl, "nvlist/string"));
	FUNC0(FUNC18(nvl, "nvlist/nvlist"));
	FUNC0(FUNC15(nvl, "nvlist/descriptor"));
	FUNC0(FUNC13(nvl, "nvlist/binary"));

	FUNC25(nvl, "nvlist/nvlist");
	FUNC0(!FUNC12(nvl, "nvlist/null"));
	FUNC0(!FUNC12(nvl, "nvlist/bool"));
	FUNC0(!FUNC12(nvl, "nvlist/number"));
	FUNC0(!FUNC12(nvl, "nvlist/string"));
	FUNC0(!FUNC12(nvl, "nvlist/nvlist"));
	FUNC0(FUNC12(nvl, "nvlist/descriptor"));
	FUNC0(FUNC12(nvl, "nvlist/binary"));
	FUNC0(!FUNC16(nvl, "nvlist/null"));
	FUNC0(!FUNC14(nvl, "nvlist/bool"));
	FUNC0(!FUNC17(nvl, "nvlist/number"));
	FUNC0(!FUNC19(nvl, "nvlist/string"));
	FUNC0(!FUNC18(nvl, "nvlist/nvlist"));
	FUNC0(FUNC15(nvl, "nvlist/descriptor"));
	FUNC0(FUNC13(nvl, "nvlist/binary"));

	FUNC22(nvl, "nvlist/descriptor");
	FUNC0(!FUNC12(nvl, "nvlist/null"));
	FUNC0(!FUNC12(nvl, "nvlist/bool"));
	FUNC0(!FUNC12(nvl, "nvlist/number"));
	FUNC0(!FUNC12(nvl, "nvlist/string"));
	FUNC0(!FUNC12(nvl, "nvlist/nvlist"));
	FUNC0(!FUNC12(nvl, "nvlist/descriptor"));
	FUNC0(FUNC12(nvl, "nvlist/binary"));
	FUNC0(!FUNC16(nvl, "nvlist/null"));
	FUNC0(!FUNC14(nvl, "nvlist/bool"));
	FUNC0(!FUNC17(nvl, "nvlist/number"));
	FUNC0(!FUNC19(nvl, "nvlist/string"));
	FUNC0(!FUNC18(nvl, "nvlist/nvlist"));
	FUNC0(!FUNC15(nvl, "nvlist/descriptor"));
	FUNC0(FUNC13(nvl, "nvlist/binary"));

	FUNC20(nvl, "nvlist/binary");
	FUNC0(!FUNC12(nvl, "nvlist/null"));
	FUNC0(!FUNC12(nvl, "nvlist/bool"));
	FUNC0(!FUNC12(nvl, "nvlist/number"));
	FUNC0(!FUNC12(nvl, "nvlist/string"));
	FUNC0(!FUNC12(nvl, "nvlist/nvlist"));
	FUNC0(!FUNC12(nvl, "nvlist/descriptor"));
	FUNC0(!FUNC12(nvl, "nvlist/binary"));
	FUNC0(!FUNC16(nvl, "nvlist/null"));
	FUNC0(!FUNC14(nvl, "nvlist/bool"));
	FUNC0(!FUNC17(nvl, "nvlist/number"));
	FUNC0(!FUNC19(nvl, "nvlist/string"));
	FUNC0(!FUNC18(nvl, "nvlist/nvlist"));
	FUNC0(!FUNC15(nvl, "nvlist/descriptor"));
	FUNC0(!FUNC13(nvl, "nvlist/binary"));

	FUNC0(FUNC10(nvl));

	FUNC9(nvl);

	return (0);
}