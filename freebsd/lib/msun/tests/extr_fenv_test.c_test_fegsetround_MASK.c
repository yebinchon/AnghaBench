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
 int /*<<< orphan*/  FE_ALL_EXCEPT ; 
 scalar_t__ FE_DOWNWARD ; 
 scalar_t__ FE_TONEAREST ; 
 scalar_t__ FE_TOWARDZERO ; 
 scalar_t__ FE_UPWARD ; 
 int FLT_ROUNDS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static void
FUNC5(void)
{

	FUNC0(FUNC2() == FE_TONEAREST);
	FUNC0(FUNC4() == FE_TONEAREST);
	FUNC0(FLT_ROUNDS == 1);

	FUNC0(FUNC3(FE_DOWNWARD) == 0);
	FUNC0(FUNC2() == FE_DOWNWARD);
	FUNC0(FUNC4() == FE_DOWNWARD);
	FUNC0(FLT_ROUNDS == 3);

	FUNC0(FUNC3(FE_UPWARD) == 0);
	FUNC0(FUNC4() == FE_UPWARD);
	FUNC0(FUNC2() == FE_UPWARD);
	FUNC0(FLT_ROUNDS == 2);

	FUNC0(FUNC3(FE_TOWARDZERO) == 0);
	FUNC0(FUNC4() == FE_TOWARDZERO);
	FUNC0(FUNC2() == FE_TOWARDZERO);
	FUNC0(FLT_ROUNDS == 0);

	FUNC0(FUNC3(FE_TONEAREST) == 0);
	FUNC0(FUNC4() == FE_TONEAREST);
	FUNC0(FLT_ROUNDS == 1);

	FUNC0(FUNC1(FE_ALL_EXCEPT) == 0);
}