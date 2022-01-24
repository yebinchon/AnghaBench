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

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct ucl_parser* FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (struct ucl_parser*,char const*) ; 
 char* FUNC5 (struct ucl_parser*) ; 

__attribute__((used)) static int
FUNC6 (lua_State *L)
{
	struct ucl_parser *parser;
	const char *file;
	int ret = 2;

	parser = FUNC3 (L, 1);
	file = FUNC0 (L, 2);

	if (parser != NULL && file != NULL) {
		if (FUNC4 (parser, file)) {
			FUNC1 (L, true);
			ret = 1;
		}
		else {
			FUNC1 (L, false);
			FUNC2 (L, FUNC5 (parser));
		}
	}
	else {
		FUNC1 (L, false);
		FUNC2 (L, "invalid arguments");
	}

	return ret;
}