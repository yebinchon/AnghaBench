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

/* Variables and functions */
 int /*<<< orphan*/  _DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void (*) ()) ; 
 int /*<<< orphan*/  eprol ; 
 int /*<<< orphan*/  etext ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char**,char**) ; 
 int /*<<< orphan*/  FUNC5 (int,char**,char**) ; 
 int /*<<< orphan*/  FUNC6 (int,char**,char**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void
FUNC9(char **ap, void (*cleanup)(void))
{
	int argc;
	char **argv;
	char **env;

	argc = *(long *)(void *)ap;
	argv = ap + 1;
	env = ap + 2 + argc;
	FUNC4(argc, argv, env);

	if (&_DYNAMIC != NULL) {
		FUNC2(cleanup);
	} else {
		FUNC8();
		FUNC0();
	}

#ifdef GCRT
	atexit(_mcleanup);
	monstartup(&eprol, &etext);
__asm__("eprol:");
#endif

	FUNC5(argc, argv, env);
	FUNC3(FUNC6(argc, argv, env));
}