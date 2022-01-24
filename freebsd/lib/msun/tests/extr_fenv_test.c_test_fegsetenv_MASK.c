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
typedef  int /*<<< orphan*/  fenv_t ;

/* Variables and functions */
 int /*<<< orphan*/  FE_ALL_EXCEPT ; 
 scalar_t__ FE_DOWNWARD ; 
 int FE_INEXACT ; 
 int FE_OVERFLOW ; 
 scalar_t__ FE_TONEAREST ; 
 int FE_UNDERFLOW ; 
 int NEXCEPTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int* std_except_sets ; 

__attribute__((used)) static void
FUNC8(void)
{
	fenv_t env1, env2;
	int excepts, i;

	for (i = 0; i < 1 << NEXCEPTS; i++) {
		excepts = std_except_sets[i];

		FUNC0(FUNC6(FE_ALL_EXCEPT) == 0);
		FUNC0(FUNC3() == FE_TONEAREST);
		FUNC0(FUNC2(&env1) == 0);

		/*
		 * fe[gs]etenv() should be able to save and restore
		 * exception flags without the spurious inexact
		 * exceptions that afflict raiseexcept().
		 */
		FUNC7(excepts);
		if ((excepts & (FE_UNDERFLOW | FE_OVERFLOW)) != 0 &&
		    (excepts & FE_INEXACT) == 0)
			FUNC0(FUNC1(FE_INEXACT) == 0);

		FUNC5(FE_DOWNWARD);
		FUNC0(FUNC2(&env2) == 0);
		FUNC0(FUNC4(&env1) == 0);
		FUNC0(FUNC6(FE_ALL_EXCEPT) == 0);
		FUNC0(FUNC3() == FE_TONEAREST);

		FUNC0(FUNC4(&env2) == 0);
		FUNC0(FUNC6(FE_ALL_EXCEPT) == excepts);
		FUNC0(FUNC3() == FE_DOWNWARD);
		FUNC0(FUNC4(&env1) == 0);
		FUNC0(FUNC6(FE_ALL_EXCEPT) == 0);
		FUNC0(FUNC3() == FE_TONEAREST);
	}
}