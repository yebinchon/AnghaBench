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
typedef  int /*<<< orphan*/  fexcept_t ;

/* Variables and functions */
 int ALL_STD_EXCEPT ; 
 int FE_ALL_EXCEPT ; 
 int NEXCEPTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int* std_except_sets ; 

__attribute__((used)) static void
FUNC6(void)
{
	fexcept_t flag;
	int excepts, i;

	FUNC0(FUNC4(FE_ALL_EXCEPT) == 0);
	for (i = 0; i < 1 << NEXCEPTS; i++) {
		excepts = std_except_sets[i];

		FUNC0(FUNC2(&flag, excepts) == 0);
		FUNC5(ALL_STD_EXCEPT);
		FUNC0(FUNC3(&flag, excepts) == 0);
		FUNC0(FUNC4(ALL_STD_EXCEPT) ==
		    (ALL_STD_EXCEPT ^ excepts));

		FUNC0(FUNC2(&flag, FE_ALL_EXCEPT) == 0);
		FUNC0(FUNC1(FE_ALL_EXCEPT) == 0);
		FUNC0(FUNC3(&flag, excepts) == 0);
		FUNC0(FUNC4(ALL_STD_EXCEPT) == 0);
		FUNC0(FUNC3(&flag, ALL_STD_EXCEPT ^ excepts) == 0);
		FUNC0(FUNC4(ALL_STD_EXCEPT) ==
		    (ALL_STD_EXCEPT ^ excepts));

		FUNC0(FUNC1(FE_ALL_EXCEPT) == 0);
	}
}