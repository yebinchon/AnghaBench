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
 int INT_MIN ; 
 scalar_t__ LUA_TNUMBER ; 
 int /*<<< orphan*/  UCL_ARRAY ; 
 int /*<<< orphan*/  UCL_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int,size_t*) ; 
 double FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,size_t,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ucl_object_t *
FUNC13 (lua_State *L, int idx)
{
	ucl_object_t *obj, *top = NULL;
	size_t keylen;
	const char *k;
	bool is_array = true;
	int max = INT_MIN;

	if (idx < 0) {
		/* For negative indicies we want to invert them */
		idx = FUNC1 (L) + idx + 1;
	}
	/* Check for array */
	FUNC5 (L);
	while (FUNC2 (L, idx) != 0) {
		if (FUNC8 (L, -2) == LUA_TNUMBER) {
			double num = FUNC7 (L, -2);
			if (num == (int)num) {
				if (num > max) {
					max = num;
				}
			}
			else {
				/* Keys are not integer */
				FUNC3 (L, 2);
				is_array = false;
				break;
			}
		}
		else {
			/* Keys are not numeric */
			FUNC3 (L, 2);
			is_array = false;
			break;
		}
		FUNC3 (L, 1);
	}

	/* Table iterate */
	if (is_array) {
		int i;

		top = FUNC12 (UCL_ARRAY);
		for (i = 1; i <= max; i ++) {
			FUNC4 (L, i);
			FUNC0 (L, idx);
			obj = FUNC11 (L, FUNC1 (L));
			if (obj != NULL) {
				FUNC9 (top, obj);
			}
			FUNC3 (L, 1);
		}
	}
	else {
		FUNC5 (L);
		top = FUNC12 (UCL_OBJECT);
		while (FUNC2 (L, idx) != 0) {
			/* copy key to avoid modifications */
			k = FUNC6 (L, -2, &keylen);
			obj = FUNC11 (L, FUNC1 (L));

			if (obj != NULL) {
				FUNC10 (top, obj, k, keylen, true);
			}
			FUNC3 (L, 1);
		}
	}

	return top;
}