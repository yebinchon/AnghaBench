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
typedef  int /*<<< orphan*/  fptr ;

/* Variables and functions */
 int /*<<< orphan*/  _DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  _mcleanup ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eprol ; 
 int /*<<< orphan*/  etext ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char**,char**) ; 
 int /*<<< orphan*/  FUNC4 (int,char**,char**) ; 
 int /*<<< orphan*/  FUNC5 (int,char**,char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void
FUNC8(fptr cleanup, int argc, char *argv[])
{
	char **env;

	env = argv + argc + 1;
	FUNC3(argc, argv, env);
	if (&_DYNAMIC != NULL) {
		FUNC1(cleanup);
	} else {
		FUNC7();
		FUNC0();
	}

#ifdef GCRT
	atexit(_mcleanup);
	monstartup(&eprol, &etext);
__asm__("eprol:");
#endif

	FUNC4(argc, argv, env);
	FUNC2(FUNC5(argc, argv, env));
}