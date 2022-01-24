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
typedef  int /*<<< orphan*/  const nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int INT64_MAX ; 
 int INT64_MIN ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int UINT64_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,char*,char*,...) ; 
 int /*<<< orphan*/  const* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/  const*) ; 
 int FUNC12 (int /*<<< orphan*/  const*,char*) ; 
 int FUNC13 (int /*<<< orphan*/  const*,char*) ; 
 int FUNC14 (int /*<<< orphan*/  const*,char*) ; 
 int FUNC15 (int /*<<< orphan*/  const*,char*) ; 
 int FUNC16 (int /*<<< orphan*/  const*,char*) ; 
 int FUNC17 (int /*<<< orphan*/  const*,char*) ; 
 int FUNC18 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  const* FUNC19 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 

int
FUNC21(void)
{
	const nvlist_t *cnvl;
	nvlist_t *nvl;

	FUNC20("1..94\n");

	nvl = FUNC9(0);

	FUNC0(!FUNC15(nvl, "nvlist/null"));
	FUNC4(nvl, "nvlist/null");
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC15(nvl, "nvlist/null"));

	FUNC0(!FUNC13(nvl, "nvlist/bool/true"));
	FUNC2(nvl, "nvlist/bool/true", true);
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC13(nvl, "nvlist/bool/true"));

	FUNC0(!FUNC13(nvl, "nvlist/bool/false"));
	FUNC2(nvl, "nvlist/bool/false", false);
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC13(nvl, "nvlist/bool/false"));

	FUNC0(!FUNC16(nvl, "nvlist/number/0"));
	FUNC5(nvl, "nvlist/number/0", 0);
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC16(nvl, "nvlist/number/0"));

	FUNC0(!FUNC16(nvl, "nvlist/number/1"));
	FUNC5(nvl, "nvlist/number/1", 1);
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC16(nvl, "nvlist/number/1"));

	FUNC0(!FUNC16(nvl, "nvlist/number/-1"));
	FUNC5(nvl, "nvlist/number/-1", -1);
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC16(nvl, "nvlist/number/-1"));

	FUNC0(!FUNC16(nvl, "nvlist/number/UINT64_MAX"));
	FUNC5(nvl, "nvlist/number/UINT64_MAX", UINT64_MAX);
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC16(nvl, "nvlist/number/UINT64_MAX"));

	FUNC0(!FUNC16(nvl, "nvlist/number/INT64_MIN"));
	FUNC5(nvl, "nvlist/number/INT64_MIN", INT64_MIN);
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC16(nvl, "nvlist/number/INT64_MIN"));

	FUNC0(!FUNC16(nvl, "nvlist/number/INT64_MAX"));
	FUNC5(nvl, "nvlist/number/INT64_MAX", INT64_MAX);
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC16(nvl, "nvlist/number/INT64_MAX"));

	FUNC0(!FUNC18(nvl, "nvlist/string/"));
	FUNC7(nvl, "nvlist/string/", "");
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC18(nvl, "nvlist/string/"));

	FUNC0(!FUNC18(nvl, "nvlist/string/x"));
	FUNC7(nvl, "nvlist/string/x", "x");
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC18(nvl, "nvlist/string/x"));

	FUNC0(!FUNC18(nvl, "nvlist/string/abcdefghijklmnopqrstuvwxyz"));
	FUNC7(nvl, "nvlist/string/abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz");
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC18(nvl, "nvlist/string/abcdefghijklmnopqrstuvwxyz"));

	FUNC0(!FUNC18(nvl, "nvlist/stringf/"));
	FUNC8(nvl, "nvlist/stringf/", "%s", "");
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC18(nvl, "nvlist/stringf/"));

	FUNC0(!FUNC18(nvl, "nvlist/stringf/x"));
	FUNC8(nvl, "nvlist/stringf/x", "%s", "x");
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC18(nvl, "nvlist/stringf/x"));

	FUNC0(!FUNC18(nvl, "nvlist/stringf/666Xabc"));
	FUNC8(nvl, "nvlist/stringf/666Xabc", "%d%c%s", 666, 'X', "abc");
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC18(nvl, "nvlist/stringf/666Xabc"));

	FUNC0(!FUNC14(nvl, "nvlist/descriptor/STDERR_FILENO"));
	FUNC3(nvl, "nvlist/descriptor/STDERR_FILENO", STDERR_FILENO);
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC14(nvl, "nvlist/descriptor/STDERR_FILENO"));

	FUNC0(!FUNC12(nvl, "nvlist/binary/x"));
	FUNC1(nvl, "nvlist/binary/x", "x", 1);
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC12(nvl, "nvlist/binary/x"));

	FUNC0(!FUNC12(nvl, "nvlist/binary/abcdefghijklmnopqrstuvwxyz"));
	FUNC1(nvl, "nvlist/binary/abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz", sizeof("abcdefghijklmnopqrstuvwxyz"));
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC12(nvl, "nvlist/binary/abcdefghijklmnopqrstuvwxyz"));

	FUNC0(!FUNC17(nvl, "nvlist/nvlist"));
	FUNC6(nvl, "nvlist/nvlist", nvl);
	FUNC0(FUNC11(nvl) == 0);
	FUNC0(FUNC17(nvl, "nvlist/nvlist"));

	FUNC0(FUNC15(nvl, "nvlist/null"));
	FUNC0(FUNC13(nvl, "nvlist/bool/true"));
	FUNC0(FUNC13(nvl, "nvlist/bool/false"));
	FUNC0(FUNC16(nvl, "nvlist/number/0"));
	FUNC0(FUNC16(nvl, "nvlist/number/1"));
	FUNC0(FUNC16(nvl, "nvlist/number/-1"));
	FUNC0(FUNC16(nvl, "nvlist/number/UINT64_MAX"));
	FUNC0(FUNC16(nvl, "nvlist/number/INT64_MIN"));
	FUNC0(FUNC16(nvl, "nvlist/number/INT64_MAX"));
	FUNC0(FUNC18(nvl, "nvlist/string/"));
	FUNC0(FUNC18(nvl, "nvlist/string/x"));
	FUNC0(FUNC18(nvl, "nvlist/string/abcdefghijklmnopqrstuvwxyz"));
	FUNC0(FUNC18(nvl, "nvlist/stringf/"));
	FUNC0(FUNC18(nvl, "nvlist/stringf/x"));
	FUNC0(FUNC18(nvl, "nvlist/stringf/666Xabc"));
	FUNC0(FUNC14(nvl, "nvlist/descriptor/STDERR_FILENO"));
	FUNC0(FUNC12(nvl, "nvlist/binary/x"));
	FUNC0(FUNC12(nvl, "nvlist/binary/abcdefghijklmnopqrstuvwxyz"));
	FUNC0(FUNC17(nvl, "nvlist/nvlist"));

	cnvl = FUNC19(nvl, "nvlist/nvlist");
	FUNC0(FUNC15(cnvl, "nvlist/null"));
	FUNC0(FUNC13(cnvl, "nvlist/bool/true"));
	FUNC0(FUNC13(cnvl, "nvlist/bool/false"));
	FUNC0(FUNC16(cnvl, "nvlist/number/0"));
	FUNC0(FUNC16(cnvl, "nvlist/number/1"));
	FUNC0(FUNC16(cnvl, "nvlist/number/-1"));
	FUNC0(FUNC16(cnvl, "nvlist/number/UINT64_MAX"));
	FUNC0(FUNC16(cnvl, "nvlist/number/INT64_MIN"));
	FUNC0(FUNC16(cnvl, "nvlist/number/INT64_MAX"));
	FUNC0(FUNC18(cnvl, "nvlist/string/"));
	FUNC0(FUNC18(cnvl, "nvlist/string/x"));
	FUNC0(FUNC18(cnvl, "nvlist/string/abcdefghijklmnopqrstuvwxyz"));
	FUNC0(FUNC18(cnvl, "nvlist/stringf/"));
	FUNC0(FUNC18(cnvl, "nvlist/stringf/x"));
	FUNC0(FUNC18(cnvl, "nvlist/stringf/666Xabc"));
	FUNC0(FUNC14(cnvl, "nvlist/descriptor/STDERR_FILENO"));
	FUNC0(FUNC12(cnvl, "nvlist/binary/x"));
	FUNC0(FUNC12(cnvl, "nvlist/binary/abcdefghijklmnopqrstuvwxyz"));

	FUNC10(nvl);

	return (0);
}