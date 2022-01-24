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
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 char** FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(lua_State *L)
{
	int	i;
	int	res = 1;
	int 	argc = FUNC3(L);
	char	**argv;

	argv = FUNC5(sizeof(char *) * (argc + 1));
	if (argv == NULL)
		return 0;
	for (i = 0; i < argc; i++)
		argv[i] = (char *)(intptr_t)FUNC2(L, i + 1);
	argv[argc] = NULL;
	res = FUNC1(argc, argv);
	FUNC0(argv);
	FUNC4(L, res);

	return 1;
}