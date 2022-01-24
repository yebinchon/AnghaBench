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
typedef  enum ucl_emitter { ____Placeholder_ucl_emitter } ucl_emitter ;

/* Variables and functions */
 scalar_t__ LUA_TSTRING ; 
 int UCL_EMIT_JSON_COMPACT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (char const*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC7 (lua_State *L)
{
	ucl_object_t *obj;
	enum ucl_emitter format = UCL_EMIT_JSON_COMPACT;

	obj = FUNC4 (L, 1);

	if (obj) {
		if (FUNC0 (L) > 1) {
			if (FUNC3 (L, 2) == LUA_TSTRING) {
				const char *strtype = FUNC2 (L, 2);

				format = FUNC5 (strtype);
			}
		}

		return FUNC6 (L, obj, format);
	}
	else {
		FUNC1 (L);
	}

	return 1;
}