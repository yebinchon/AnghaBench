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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  DIR_METATABLE ; 
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lua_dir_iter_next ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 (char const*) ; 

__attribute__((used)) static int
FUNC8(lua_State *L)
{
	const char *path;
	DIR *dp;

	if (FUNC2(L) != 1) {
		FUNC5(L);
		return 1;
	}

	path = FUNC0(L, 1);
	dp = FUNC7(path);
	if (dp == NULL) {
		FUNC5(L);
		return 1;
	}

	FUNC4(L, lua_dir_iter_next);
	*(DIR **)FUNC3(L, sizeof(DIR **)) = dp;
	FUNC1(L, DIR_METATABLE);
	FUNC6(L, -2);
	return 2;
}