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

/* Variables and functions */
 int /*<<< orphan*/  ZPROP_SOURCE ; 
 int /*<<< orphan*/  ZPROP_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int
FUNC11(lua_State *state)
{
	char *source, *val;
	nvlist_t *nvprop;
	nvlist_t **props = FUNC6(state, FUNC7(1));
	nvpair_t *pair = FUNC6(state, FUNC7(2));

	do {
		pair = FUNC8(*props, pair);
		if (pair == NULL) {
			FUNC0(*props);
			*props = NULL;
			return (0);
		}
	} while (!FUNC10(FUNC9(pair)));

	FUNC3(state, pair);
	FUNC5(state, FUNC7(2));

	nvprop = FUNC2(pair);
	val = FUNC1(nvprop, ZPROP_VALUE);
	source = FUNC1(nvprop, ZPROP_SOURCE);

	(void) FUNC4(state, FUNC9(pair));
	(void) FUNC4(state, val);
	(void) FUNC4(state, source);
	return (3);
}