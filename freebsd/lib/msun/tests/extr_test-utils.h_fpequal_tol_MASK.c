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
 unsigned int CS_BOTH ; 
 unsigned int FPE_ABS_ZERO ; 
 scalar_t__ FUNC0 (long double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (long double) ; 
 int /*<<< orphan*/  FUNC4 (long double) ; 

__attribute__((used)) static int
FUNC5(long double x, long double y, long double tol,
    unsigned int flags)
{
	fenv_t env;
	int ret;

	if (FUNC3(x) && FUNC3(y))
		return (1);
	if (!FUNC4(x) != !FUNC4(y) && (flags & CS_BOTH))
		return (0);
	if (x == y)
		return (1);
	if (tol == 0)
		return (0);

	/* Hard case: need to check the tolerance. */
	FUNC1(&env);
	/*
	 * For our purposes here, if y=0, we interpret tol as an absolute
	 * tolerance. This is to account for roundoff in the input, e.g.,
	 * cos(Pi/2) ~= 0.
	 */
	if ((flags & FPE_ABS_ZERO) && y == 0.0)
		ret = FUNC0(x - y) <= FUNC0(tol);
	else
		ret = FUNC0(x - y) <= FUNC0(y * tol);
	FUNC2(&env);
	return (ret);
}