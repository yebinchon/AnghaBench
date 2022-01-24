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
 int FUNC1 (int,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int*,char***,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(lua_State *L)
{
	int	argc;
	char	**argv;
	int	res = 1;

	if (FUNC4(&argc, &argv, FUNC2(L, 1)) == 0) {
		res = FUNC1(argc, argv);
		FUNC0(argv);
	}
	FUNC3(L, res);

	return 1;
}