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
struct ucl_lua_funcdata {char const* ret; int /*<<< orphan*/  L; int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int) ; 
 char const* FUNC5 (char const*) ; 

__attribute__((used)) static const char *
FUNC6 (void *ud)
{
	struct ucl_lua_funcdata *fd = (struct ucl_lua_funcdata *)ud;
	const char *out = "";

	FUNC2 (fd->L, LUA_REGISTRYINDEX, fd->idx);

	FUNC1 (fd->L, 0, 1, 0);
	out = FUNC4 (fd->L, -1);

	if (out != NULL) {
		/* We need to store temporary string in a more appropriate place */
		if (fd->ret) {
			FUNC0 (fd->ret);
		}
		fd->ret = FUNC5 (out);
	}

	FUNC3 (fd->L, 0);

	return fd->ret;
}