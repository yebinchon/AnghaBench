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
 int /*<<< orphan*/  FP_PE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

int
FUNC4(void)
{

	FUNC1("1..3\n");

	FUNC3();
	FUNC1("ok 1 - exponential\n");

#ifdef __i386__
	fpsetprec(FP_PE);
	run_generic_tests();
#endif
	FUNC1("ok 2 - exponential\n");

	FUNC2();
	FUNC1("ok 3 - exponential\n");

	return (0);
}