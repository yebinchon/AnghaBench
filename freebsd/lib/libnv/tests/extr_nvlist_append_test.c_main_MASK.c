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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int* FUNC11 (int /*<<< orphan*/ *,char*,size_t*) ; 
 int FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ ** FUNC13 (int /*<<< orphan*/ *,char*,size_t*) ; 
 char const* const FUNC14 (int /*<<< orphan*/  const* const,char*) ; 
 char** FUNC15 (int /*<<< orphan*/ *,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,size_t) ; 
 int /*<<< orphan*/ ** FUNC17 (int /*<<< orphan*/ *,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 scalar_t__ FUNC19 (char const* const,char*) ; 

int
FUNC20(void)
{
	const bool *bool_result;
	const char * const *string_result;
	const nvlist_t * const *nvl_result;
	nvlist_t *nvl, *nvl1, *nvl2, **items;
	unsigned int i;
	size_t nitems;

	FUNC18("1..32\n");

	nvl = FUNC6(0);

	for (i = 0; i < 16; i++)
		FUNC3(nvl, "nvl/bool", i % 2 == 0);

	FUNC0(FUNC9(nvl) == 0);
	FUNC0(!FUNC8(nvl));
	FUNC0(FUNC10(nvl, "nvl/bool"));

	bool_result = FUNC11(nvl, "nvl/bool", &nitems);
	FUNC0(nitems == 16);
	FUNC0(bool_result != NULL);
	for (i = 0; i < nitems; i++)
		FUNC0(bool_result[i] == (i % 2 == 0));


	FUNC5(nvl, "nvl/string", "a");
	FUNC5(nvl, "nvl/string", "abc");
	string_result = FUNC15(nvl, "nvl/string", &nitems);
	FUNC0(nitems == 2);
	FUNC0(FUNC19(string_result[0], "a") == 0);
	FUNC0(FUNC19(string_result[1], "abc") == 0);


	nvl1 = FUNC6(0);
	FUNC2(nvl1, "key1", "test1");
	FUNC4(nvl, "nvl/nvl", nvl1);
	FUNC7(nvl1);

	nvl2 = FUNC6(0);
	FUNC2(nvl2, "key2", "test2");
	FUNC4(nvl, "nvl/nvl", nvl2);
	FUNC7(nvl2);

	nvl_result = FUNC13(nvl, "nvl/nvl", &nitems);
	FUNC0(nitems == 2);
	FUNC0(FUNC19(FUNC14(nvl_result[0], "key1"), "test1") == 0);
	FUNC0(FUNC19(FUNC14(nvl_result[1], "key2"), "test2") == 0);

	nvl1 = FUNC6(0);
	FUNC1(nvl1, "key1", 10);
	FUNC4(nvl, "nvl/nvl_array", nvl1);
	FUNC7(nvl1);

	nvl2 = FUNC6(0);
	FUNC1(nvl2, "key1", 20);
	FUNC4(nvl, "nvl/nvl_array", nvl2);
	FUNC7(nvl2);

	items = FUNC17(nvl, "nvl/nvl_array", &nitems);
	FUNC0(FUNC12(items[0], "key1") == 10);
	FUNC0(FUNC12(items[1], "key1") == 20);
	FUNC0(FUNC9(items[0]) == 0);
	FUNC0(FUNC9(items[1]) == 0);

	FUNC16(nvl, "nvl/nvl_new_array", items, nitems);
	FUNC0(FUNC9(nvl) == 0);

	FUNC7(nvl);

	return (0);
}