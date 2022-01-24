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
struct ucl_schema_error {int /*<<< orphan*/  msg; } ;
struct ucl_parser {scalar_t__ top_obj; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ LUA_TSTRING ; 
 scalar_t__ LUA_TTABLE ; 
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct ucl_parser* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__,struct ucl_schema_error*) ; 
 int /*<<< orphan*/  FUNC10 (struct ucl_parser*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (struct ucl_parser*) ; 
 int /*<<< orphan*/  FUNC12 (struct ucl_parser*) ; 
 int /*<<< orphan*/ * FUNC13 (struct ucl_parser*) ; 
 struct ucl_parser* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15 (lua_State *L)
{
	struct ucl_parser *parser, *schema_parser;
	ucl_object_t *schema;
	const char *schema_file;
	struct ucl_schema_error err;

	parser = FUNC6 (L, 1);

	if (parser && parser->top_obj) {
		if (FUNC5 (L, 2) == LUA_TTABLE) {
			schema = FUNC7 (L, 2);

			if (schema == NULL) {
				FUNC1 (L, false);
				FUNC4 (L, "cannot load schema from lua table");

				return 2;
			}
		}
		else if (FUNC5 (L, 2) == LUA_TSTRING) {
			schema_parser = FUNC14 (0);
			schema_file = FUNC0 (L, 2);

			if (!FUNC10 (schema_parser, schema_file)) {
				FUNC1 (L, false);
				FUNC2 (L, "cannot parse schema file \"%s\": "
						"%s", schema_file, FUNC12 (parser));
				FUNC11 (schema_parser);

				return 2;
			}

			schema = FUNC13 (schema_parser);
			FUNC11 (schema_parser);
		}
		else {
			FUNC1 (L, false);
			FUNC4 (L, "invalid schema argument");

			return 2;
		}

		if (!FUNC9 (schema, parser->top_obj, &err)) {
			FUNC1 (L, false);
			FUNC2 (L, "validation error: "
					"%s", err.msg);
		}
		else {
			FUNC1 (L, true);
			FUNC3 (L);
		}

		FUNC8 (schema);
	}
	else {
		FUNC1 (L, false);
		FUNC4 (L, "invalid parser or empty top object");
	}

	return 2;
}