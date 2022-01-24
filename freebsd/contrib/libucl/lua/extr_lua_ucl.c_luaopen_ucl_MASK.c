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

/* Variables and functions */
 int LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  NULL_META ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lua_ucl_parser_init ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lua_ucl_to_config ; 
 int /*<<< orphan*/  lua_ucl_to_format ; 
 int /*<<< orphan*/  lua_ucl_to_json ; 
 int /*<<< orphan*/  ucl_null ; 

int
FUNC12 (lua_State *L)
{
	FUNC11 (L);
	FUNC9 (L);
	FUNC10 (L);

	/* Create the refs weak table: */
	FUNC1 (L, 0, 2);
	FUNC5 (L, "v"); /* tbl, "v" */
	FUNC7 (L, -2, "__mode");
	FUNC6 (L, -1); /* tbl, tbl */
	FUNC8 (L, -2); /* tbl */
	FUNC7 (L, LUA_REGISTRYINDEX, "ucl.refs");

	FUNC2 (L);

	FUNC4 (L, lua_ucl_parser_init);
	FUNC7 (L, -2, "parser");

	FUNC4 (L, lua_ucl_to_json);
	FUNC7 (L, -2, "to_json");

	FUNC4 (L, lua_ucl_to_config);
	FUNC7 (L, -2, "to_config");

	FUNC4 (L, lua_ucl_to_format);
	FUNC7 (L, -2, "to_format");

	ucl_null = FUNC3 (L, 0);
	FUNC0 (L, NULL_META);
	FUNC8 (L, -2);

	FUNC6 (L, -1);
	FUNC7 (L, LUA_REGISTRYINDEX, "ucl.null");

	FUNC7 (L, -2, "null");

	return 1;
}