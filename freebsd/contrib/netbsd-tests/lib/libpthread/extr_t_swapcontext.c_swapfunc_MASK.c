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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  nctx ; 
 void* nself ; 
 int /*<<< orphan*/  octx ; 
 int /*<<< orphan*/  oself ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	/*
	 * If the test fails, we are very likely to crash 
	 * without the opportunity to report
	 */ 
	nself = (void *)FUNC3();
	FUNC2("after swapcontext self = %p\n", nself);

	FUNC1(oself, nself);
	FUNC2("Test succeeded\n");
	/* Go back in main */
	FUNC0(FUNC4(&nctx, &octx));

	/* NOTREACHED */
	return;
}