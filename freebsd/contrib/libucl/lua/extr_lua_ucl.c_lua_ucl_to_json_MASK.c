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
 int UCL_EMIT_JSON ; 
 int UCL_EMIT_JSON_COMPACT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6 (lua_State *L)
{
	ucl_object_t *obj;
	int format = UCL_EMIT_JSON;

	if (FUNC0 (L) > 1) {
		if (FUNC2 (L, 2)) {
			format = UCL_EMIT_JSON_COMPACT;
		}
	}

	obj = FUNC4 (L, 1);
	if (obj != NULL) {
		FUNC3 (L, obj, format);
		FUNC5 (obj);
	}
	else {
		FUNC1 (L);
	}

	return 1;
}