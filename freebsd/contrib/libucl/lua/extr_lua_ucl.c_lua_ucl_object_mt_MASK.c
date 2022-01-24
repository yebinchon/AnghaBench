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
 int /*<<< orphan*/  OBJECT_META ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  lua_ucl_object_gc ; 
 int /*<<< orphan*/  lua_ucl_object_tostring ; 
 int /*<<< orphan*/  lua_ucl_object_unwrap ; 
 int /*<<< orphan*/  lua_ucl_object_validate ; 

__attribute__((used)) static void
FUNC6 (lua_State *L)
{
	FUNC0 (L, OBJECT_META);

	FUNC4(L, -1);
	FUNC5(L, -2, "__index");

	FUNC2 (L, lua_ucl_object_gc);
	FUNC5 (L, -2, "__gc");

	FUNC2 (L, lua_ucl_object_tostring);
	FUNC5 (L, -2, "__tostring");

	FUNC2 (L, lua_ucl_object_tostring);
	FUNC5 (L, -2, "tostring");

	FUNC2 (L, lua_ucl_object_unwrap);
	FUNC5 (L, -2, "unwrap");

	FUNC2 (L, lua_ucl_object_unwrap);
	FUNC5 (L, -2, "tolua");

	FUNC2 (L, lua_ucl_object_validate);
	FUNC5 (L, -2, "validate");

	FUNC3 (L, OBJECT_META);
	FUNC5 (L, -2, "class");

	FUNC1 (L, 1);
}