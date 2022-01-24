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
struct ucl_schema_error {char const* msg; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ LUA_TSTRING ; 
 scalar_t__ LUA_TTABLE ; 
 scalar_t__ LUA_TUSERDATA ; 
 scalar_t__ UCL_OBJECT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char const*,char) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ucl_schema_error*) ; 

__attribute__((used)) static int
FUNC12 (lua_State *L)
{
	ucl_object_t *obj, *schema, *ext_refs = NULL;
	const ucl_object_t *schema_elt;
	bool res = false;
	struct ucl_schema_error err;
	const char *path = NULL;

	obj = FUNC7 (L, 1);
	schema = FUNC7 (L, 2);

	if (schema && obj && FUNC10 (schema) == UCL_OBJECT) {
		if (FUNC0 (L) > 2) {
			if (FUNC6 (L, 3) == LUA_TSTRING) {
				path = FUNC5 (L, 3);
				if (path[0] == '#') {
					path++;
				}
			}
			else if (FUNC6 (L, 3) == LUA_TUSERDATA || FUNC6 (L, 3) ==
						LUA_TTABLE) {
				/* External refs */
				ext_refs = FUNC7 (L, 3);
			}

			if (FUNC0 (L) > 3) {
				if (FUNC6 (L, 4) == LUA_TUSERDATA || FUNC6 (L, 4) ==
						LUA_TTABLE) {
					/* External refs */
					ext_refs = FUNC7 (L, 4);
				}
			}
		}

		if (path) {
			schema_elt = FUNC9 (schema, path, '/');
		}
		else {
			/* Use the top object */
			schema_elt = schema;
		}

		if (schema_elt) {
			res = FUNC11 (schema_elt, obj, schema,
					ext_refs, &err);

			if (res) {
				FUNC1 (L, res);
				FUNC3 (L);

				if (ext_refs) {
					FUNC8 (L, ext_refs);
				}
			}
			else {
				FUNC1 (L, res);
				FUNC2 (L, "validation error: %s", err.msg);

				if (ext_refs) {
					FUNC8 (L, ext_refs);
				}
			}
		}
		else {
			FUNC1 (L, res);

			FUNC2 (L, "cannot find the requested path: %s", path);

			if (ext_refs) {
				FUNC8 (L, ext_refs);
			}
		}
	}
	else {
		FUNC1 (L, res);
		FUNC4 (L, "invalid object or schema");
	}

	if (ext_refs) {
		return 3;
	}

	return 2;
}