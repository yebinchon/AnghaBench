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
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ DATA_TYPE_BOOLEAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 

int
FUNC10(lua_State *state, nvlist_t *nvl,
    char *errbuf, int errbuf_len)
{
	nvpair_t *pair;
	FUNC0(state);
	boolean_t has_values = B_FALSE;
	/*
	 * If the list doesn't have any values, just convert it to a string
	 * array.
	 */
	for (pair = FUNC6(nvl, NULL);
	    pair != NULL; pair = FUNC6(nvl, pair)) {
		if (FUNC8(pair) != DATA_TYPE_BOOLEAN) {
			has_values = B_TRUE;
			break;
		}
	}
	if (!has_values) {
		int i = 1;
		for (pair = FUNC6(nvl, NULL);
		    pair != NULL; pair = FUNC6(nvl, pair)) {
			(void) FUNC2(state, i);
			(void) FUNC3(state, FUNC7(pair));
			(void) FUNC5(state, -3);
			i++;
		}
	} else {
		for (pair = FUNC6(nvl, NULL);
		    pair != NULL; pair = FUNC6(nvl, pair)) {
			int err = FUNC9(state, pair,
			    errbuf, errbuf_len);
			if (err != 0) {
				FUNC1(state, 1);
				return (err);
			}
			(void) FUNC4(state, -2, FUNC7(pair));
		}
	}
	return (0);
}