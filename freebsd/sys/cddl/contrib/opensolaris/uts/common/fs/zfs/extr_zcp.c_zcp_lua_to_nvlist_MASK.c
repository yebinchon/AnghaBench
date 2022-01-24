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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(lua_State *state, int index, nvlist_t *nvl, const char *key)
{
	/*
	 * On error, zcp_lua_to_nvlist_impl pushes an error string onto the Lua
	 * stack before returning with a nonzero error code. If an error is
	 * returned, throw a fatal lua error with the given string.
	 */
	if (FUNC1(state, index, nvl, key, 0) != 0)
		(void) FUNC0(state);
}