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
 int /*<<< orphan*/  FUNC0 (double,double) ; 
 double INFINITY ; 
 double NAN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC3 (int /*<<< orphan*/ ) ; 
 double FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (double) ; 
 int FUNC6 (double) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void)
{

	FUNC1(FUNC4(FUNC7(FUNC0(INFINITY, NAN))) == INFINITY);
	FUNC1(FUNC6(FUNC3(FUNC7(FUNC0(INFINITY, NAN)))));

	FUNC1(FUNC6(FUNC4(FUNC7(FUNC0(-INFINITY, NAN)))));
	FUNC1(FUNC5(FUNC3(FUNC7(FUNC0(-INFINITY, NAN)))));

	FUNC2(FUNC7(FUNC0(NAN, INFINITY)),
		     FUNC0(INFINITY, INFINITY));
	FUNC2(FUNC7(FUNC0(NAN, -INFINITY)),
		     FUNC0(INFINITY, -INFINITY));

	FUNC2(FUNC7(FUNC0(0.0, NAN)), FUNC0(NAN, NAN));
	FUNC2(FUNC7(FUNC0(-0.0, NAN)), FUNC0(NAN, NAN));
	FUNC2(FUNC7(FUNC0(42.0, NAN)), FUNC0(NAN, NAN));
	FUNC2(FUNC7(FUNC0(-42.0, NAN)), FUNC0(NAN, NAN));
	FUNC2(FUNC7(FUNC0(NAN, 0.0)), FUNC0(NAN, NAN));
	FUNC2(FUNC7(FUNC0(NAN, -0.0)), FUNC0(NAN, NAN));
	FUNC2(FUNC7(FUNC0(NAN, 42.0)), FUNC0(NAN, NAN));
	FUNC2(FUNC7(FUNC0(NAN, -42.0)), FUNC0(NAN, NAN));
	FUNC2(FUNC7(FUNC0(NAN, NAN)), FUNC0(NAN, NAN));
}