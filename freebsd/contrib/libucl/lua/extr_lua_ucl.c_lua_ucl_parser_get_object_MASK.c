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
struct ucl_parser {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ucl_parser* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct ucl_parser*) ; 

__attribute__((used)) static int
FUNC5 (lua_State *L)
{
	struct ucl_parser *parser;
	ucl_object_t *obj;
	int ret = 1;

	parser = FUNC1 (L, 1);
	obj = FUNC4 (parser);

	if (obj != NULL) {
		ret = FUNC2 (L, obj, false);
		/* no need to keep reference */
		FUNC3 (obj);
	}
	else {
		FUNC0 (L);
	}

	return ret;
}