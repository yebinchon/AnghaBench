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
struct ucl_lua_funcdata {struct ucl_lua_funcdata* ret; int /*<<< orphan*/  idx; int /*<<< orphan*/  L; } ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (struct ucl_lua_funcdata*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (void *ud)
{
	struct ucl_lua_funcdata *fd = (struct ucl_lua_funcdata *)ud;

	FUNC1 (fd->L, LUA_REGISTRYINDEX, fd->idx);
	if (fd->ret != NULL) {
		FUNC0 (fd->ret);
	}
	FUNC0 (fd);
}