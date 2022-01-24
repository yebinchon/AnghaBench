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
 int /*<<< orphan*/  LUA_PATH ; 
 int /*<<< orphan*/  MACHINE ; 
 int /*<<< orphan*/  MACHINE_ARCH ; 
 int /*<<< orphan*/  loaderlib ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lua_printc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 

int
FUNC4(lua_State *L)
{
	FUNC0(L, loaderlib);
	/* Add loader.machine and loader.machine_arch properties */
	FUNC1(L, MACHINE);
	FUNC3(L, -2, "machine");
	FUNC1(L, MACHINE_ARCH);
	FUNC3(L, -2, "machine_arch");
	FUNC1(L, LUA_PATH);
	FUNC3(L, -2, "lua_path");
	/* Set global printc to loader.printc */
	FUNC2(L, "printc", lua_printc);
	return 1;
}