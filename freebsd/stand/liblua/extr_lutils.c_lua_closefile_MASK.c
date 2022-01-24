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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC4(lua_State *L)
{
	FILE ** f;
	if (FUNC1(L) != 1) {
		FUNC2(L, 0);
		return 1;
	}

	f = (FILE**)FUNC3(L, 1);
	if (f != NULL && *f != NULL) {
		FUNC2(L, FUNC0(*f) == 0 ? 1 : 0);
		*f = NULL;
	} else
		FUNC2(L, 0);

	return 1;
}