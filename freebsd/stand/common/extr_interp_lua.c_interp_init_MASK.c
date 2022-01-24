#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct interp_lua_softc {int /*<<< orphan*/ * luap; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {scalar_t__ func; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ luaL_Reg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* LOADER_LUA ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  interp_lua_realloc ; 
 TYPE_1__* loadedlibs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct interp_lua_softc lua_softc ; 
 char* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 

void
FUNC9(void)
{
	lua_State *luap;
	struct interp_lua_softc	*softc = &lua_softc;
	const char *filename;
	const luaL_Reg *lib;

	FUNC8("script.lang", "lua", 1);
	FUNC0("creating context");

	luap = FUNC4(interp_lua_realloc, NULL);
	if (luap == NULL) {
		FUNC7("problem initializing the Lua interpreter\n");
		FUNC1();
	}
	softc->luap = luap;

	/* "require" functions from 'loadedlibs' and set results to global table */
	for (lib = loadedlibs; lib->func; lib++) {
		FUNC3(luap, lib->name, lib->func, 1);
		FUNC5(luap, 1);  /* remove lib */
	}

	filename = LOADER_LUA;
	if (FUNC2(filename) != 0) {
                const char *errstr = FUNC6(luap, -1);
                errstr = errstr == NULL ? "unknown" : errstr;
                FUNC7("Startup error in %s:\nLUA ERROR: %s.\n", filename, errstr);
                FUNC5(luap, 1);
	}
}