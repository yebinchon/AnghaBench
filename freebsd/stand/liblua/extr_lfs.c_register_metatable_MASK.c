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
 int /*<<< orphan*/  DIR_METATABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lua_dir_iter_close ; 
 int /*<<< orphan*/  lua_dir_iter_next ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static void
FUNC5(lua_State *L)
{
	/*
	 * Create so-called metatable for iterator object returned by
	 * lfs.dir().
	 */
	FUNC0(L, DIR_METATABLE);

	FUNC1(L);
	FUNC3(L, lua_dir_iter_next);
	FUNC4(L, -2, "next");
	FUNC3(L, lua_dir_iter_close);
	FUNC4(L, -2, "close");

	/* Magically associate anonymous method table with metatable. */
	FUNC4(L, -2, "__index");
	/* Implement magic destructor method */
	FUNC3(L, lua_dir_iter_close);
	FUNC4(L, -2, "__gc");

	FUNC2(L, 1);
}