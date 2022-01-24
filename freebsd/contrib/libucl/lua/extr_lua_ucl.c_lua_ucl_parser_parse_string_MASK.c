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
struct ucl_parser {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  enum ucl_parse_type { ____Placeholder_ucl_parse_type } ucl_parse_type ;

/* Variables and functions */
 scalar_t__ LUA_TSTRING ; 
 int /*<<< orphan*/  UCL_DUPLICATE_APPEND ; 
 int UCL_PARSE_UCL ; 
 char* FUNC0 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct ucl_parser* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct ucl_parser*,unsigned char const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC8 (struct ucl_parser*) ; 

__attribute__((used)) static int
FUNC9 (lua_State *L)
{
	struct ucl_parser *parser;
	const char *string;
	size_t llen;
	enum ucl_parse_type type = UCL_PARSE_UCL;
	int ret = 2;

	parser = FUNC5 (L, 1);
	string = FUNC0 (L, 2, &llen);

	if (FUNC4 (L, 3) == LUA_TSTRING) {
		type = FUNC6 (FUNC3 (L, 3));
	}

	if (parser != NULL && string != NULL) {
		if (FUNC7 (parser, (const unsigned char *)string,
				llen, 0, UCL_DUPLICATE_APPEND, type)) {
			FUNC1 (L, true);
			ret = 1;
		}
		else {
			FUNC1 (L, false);
			FUNC2 (L, FUNC8 (parser));
		}
	}
	else {
		FUNC1 (L, false);
		FUNC2 (L, "invalid arguments");
	}

	return ret;
}