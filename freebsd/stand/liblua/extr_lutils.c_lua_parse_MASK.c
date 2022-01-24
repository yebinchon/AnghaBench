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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int*,char***,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(lua_State *L)
{
	int	argc, nargc;
	char	**argv;

	if (FUNC4(&argc, &argv, FUNC1(L, 1)) == 0) {
		for (nargc = 0; nargc < argc; ++nargc) {
			FUNC3(L, argv[nargc]);
		}
		FUNC0(argv);
		return nargc;
	}

	FUNC2(L);
	return 1;
}