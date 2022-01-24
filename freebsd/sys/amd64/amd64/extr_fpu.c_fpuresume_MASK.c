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
typedef  int /*<<< orphan*/  u_long ;

/* Variables and functions */
 int /*<<< orphan*/  XCR0 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ use_xsave ; 
 int /*<<< orphan*/  xsave_mask ; 

void
FUNC6(void *addr)
{
	u_long cr0;

	cr0 = FUNC4();
	FUNC5();
	FUNC0();
	if (use_xsave)
		FUNC3(XCR0, xsave_mask);
	FUNC1(addr);
	FUNC2(cr0);
}