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
typedef  int /*<<< orphan*/  ucl_object_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ LUA_TNUMBER ; 
 scalar_t__ LUA_TSTRING ; 
 int UCL_EMIT_CONFIG ; 
 int UCL_EMIT_JSON ; 
 int UCL_EMIT_JSON_COMPACT ; 
 int UCL_EMIT_MSGPACK ; 
 int UCL_EMIT_YAML ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9 (lua_State *L)
{
	ucl_object_t *obj;
	int format = UCL_EMIT_JSON;

	if (FUNC0 (L) > 1) {
		if (FUNC4 (L, 2) == LUA_TNUMBER) {
			format = FUNC2 (L, 2);
			if (format < 0 || format >= UCL_EMIT_YAML) {
				FUNC1 (L);
				return 1;
			}
		}
		else if (FUNC4 (L, 2) == LUA_TSTRING) {
			const char *strtype = FUNC3 (L, 2);

			if (FUNC6 (strtype, "json") == 0) {
				format = UCL_EMIT_JSON;
			}
			else if (FUNC6 (strtype, "json-compact") == 0) {
				format = UCL_EMIT_JSON_COMPACT;
			}
			else if (FUNC6 (strtype, "yaml") == 0) {
				format = UCL_EMIT_YAML;
			}
			else if (FUNC6 (strtype, "config") == 0 ||
				FUNC6 (strtype, "ucl") == 0) {
				format = UCL_EMIT_CONFIG;
			}
			else if (FUNC6 (strtype, "msgpack") == 0) {
				format = UCL_EMIT_MSGPACK;
			}
		}
	}

	obj = FUNC7 (L, 1);
	if (obj != NULL) {
		FUNC5 (L, obj, format);
		FUNC8 (obj);
	}
	else {
		FUNC1 (L);
	}

	return 1;
}