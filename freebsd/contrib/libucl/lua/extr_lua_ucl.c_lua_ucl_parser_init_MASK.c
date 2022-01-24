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
typedef  int /*<<< orphan*/  parser ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  PARSER_META ; 
 int UCL_PARSER_NO_FILEVARS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct ucl_parser** FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct ucl_parser* FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7 (lua_State *L)
{
	struct ucl_parser *parser, **pparser;
	int flags = UCL_PARSER_NO_FILEVARS;

	if (FUNC1 (L) >= 1) {
		flags = FUNC5 (L, 1);
	}

	parser = FUNC6 (flags);
	if (parser == NULL) {
		FUNC3 (L);
	}

	pparser = FUNC2 (L, sizeof (parser));
	*pparser = parser;
	FUNC0 (L, PARSER_META);
	FUNC4 (L, -2);

	return 1;
}