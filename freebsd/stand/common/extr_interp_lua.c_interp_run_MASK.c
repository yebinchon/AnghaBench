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
struct interp_lua_softc {int /*<<< orphan*/ * luap; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int CMD_ERROR ; 
 int CMD_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* command_errmsg ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int FUNC2 (int,char**) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 struct interp_lua_softc lua_softc ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int*,char***,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

int
FUNC11(const char *line)
{
	int	argc, nargc;
	char	**argv;
	lua_State *luap;
	struct interp_lua_softc	*softc = &lua_softc;
	int status, ret;

	luap = softc->luap;
	FUNC0("executing line...");
	if ((status = FUNC3(luap, line)) != 0) {
                FUNC6(luap, 1);
		/*
		 * The line wasn't executable as lua; run it through parse to
		 * to get consistent parsing of command line arguments, then
		 * run it through cli_execute. If that fails, then we'll try it
		 * as a builtin.
		 */
		command_errmsg = NULL;
		if (FUNC9(&argc, &argv, line) == 0) {
			FUNC4(luap, "cli_execute");
			for (nargc = 0; nargc < argc; ++nargc) {
				FUNC7(luap, argv[nargc]);
			}
			status = FUNC5(luap, argc, 1, 0);
			ret = FUNC8(luap, 1);
			FUNC6(luap, 1);
			if (status != 0 || ret != 0) {
				/*
				 * Lua cli_execute will pass the function back
				 * through loader.command, which is a proxy to
				 * interp_builtin_cmd. If we failed to interpret
				 * the command, though, then there's a chance
				 * that didn't happen. Call interp_builtin_cmd
				 * directly if our lua_pcall was not successful.
				 */
				status = FUNC2(argc, argv);
			}
			if (status != 0) {
				if (command_errmsg != NULL)
					FUNC10("%s\n", command_errmsg);
				else
					FUNC10("Command failed\n");
				status = CMD_ERROR;
			}
			FUNC1(argv);
		} else {
			FUNC10("Failed to parse \'%s\'\n", line);
			status = CMD_ERROR;
		}
	}

	return (status == 0 ? CMD_OK : CMD_ERROR);
}