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
typedef  int /*<<< orphan*/  u_short ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  register_t ;

/* Variables and functions */
 int CR4_XSAVE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  XCR0 ; 
 int /*<<< orphan*/  __INITIAL_FPUCW__ ; 
 int /*<<< orphan*/  __INITIAL_MXCSR__ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ use_xsave ; 
 int /*<<< orphan*/  xsave_mask ; 

void
FUNC13(void)
{
	register_t saveintr;
	u_int mxcsr;
	u_short control;

	if (FUNC0())
		FUNC3();

	if (use_xsave) {
		FUNC8(FUNC10() | CR4_XSAVE);
		FUNC9(XCR0, xsave_mask);
	}

	/*
	 * XCR0 shall be set up before CPU can report the save area size.
	 */
	if (FUNC0())
		FUNC4();

	/*
	 * It is too early for critical_enter() to work on AP.
	 */
	saveintr = FUNC5();
	FUNC12();
	FUNC2();
	control = __INITIAL_FPUCW__;
	FUNC1(control);
	mxcsr = __INITIAL_MXCSR__;
	FUNC7(mxcsr);
	FUNC11();
	FUNC6(saveintr);
}