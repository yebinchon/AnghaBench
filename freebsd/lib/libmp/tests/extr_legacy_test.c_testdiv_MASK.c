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
typedef  int /*<<< orphan*/  MINT ;

/* Variables and functions */
 int /*<<< orphan*/  c1 ; 
 int /*<<< orphan*/  c10 ; 
 int /*<<< orphan*/  c2 ; 
 int /*<<< orphan*/  c42 ; 
 int /*<<< orphan*/  c5 ; 
 int /*<<< orphan*/  c8 ; 
 int /*<<< orphan*/ * FUNC0 (short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,short*) ; 
 int /*<<< orphan*/ * t0 ; 
 int /*<<< orphan*/ * t1 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(void)
{
	short ro;
	MINT *t2;

	FUNC1(c42, c5, t0, t1);
	FUNC4(t0, c8, "mdiv0");
	FUNC4(t1, c2, "mdiv1");

	FUNC1(c10, c8, t0, t1);
	FUNC4(t0, c1, "mdiv2");
	FUNC4(t1, c2, "mdiv3");

	FUNC3(c42, 5, t0, &ro);
	FUNC4(t0, c8, "sdiv0");
	t2 = FUNC0(ro); // Simpler to use common testmcmp()
	FUNC4(t2, c2, "sdiv1");
	FUNC2(t2);

	FUNC3(c10, 8, t0, &ro);
	FUNC4(t0, c1, "sdiv2");
	t2 = FUNC0(ro); // Simpler to use common testmcmp()
	FUNC4(t2, c2, "sdiv3");
	FUNC2(t2);
}