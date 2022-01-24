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
 int /*<<< orphan*/ * FUNC0 (char const*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC5(lua_State *L)
{
	const char	*mode, *str;
	int	nargs;

	nargs = FUNC1(L);
	if (nargs < 1 || nargs > 2) {
		FUNC3(L);
		return 1;
	}
	str = FUNC4(L, 1);
	mode = "r";
	if (nargs > 1) {
		mode = FUNC4(L, 2);
		if (mode == NULL) {
			FUNC3(L);
			return 1;
		}
	}
	FILE * f = FUNC0(str, mode);
	if (f != NULL) {
		FILE ** ptr = (FILE**)FUNC2(L, sizeof(FILE**));
		*ptr = f;
	} else
		FUNC3(L);
	return 1;
}