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
typedef  int /*<<< orphan*/  const MINT ;
typedef  int /*<<< orphan*/  BN_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  const* FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC5 (char*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,short*,int /*<<< orphan*/ *) ; 

void
FUNC12(const MINT *nmp, MINT *xmp, MINT *rmp)
{
	BN_CTX *c;
	MINT *tolerance;
	MINT *ox, *x;
	MINT *z1, *z2, *z3;
	short i;

	c = FUNC1();
	if (c == NULL)
		FUNC2("msqrt");
	tolerance = FUNC3("msqrt", 1);
	x = FUNC3("msqrt", 1);
	ox = FUNC3("msqrt", 0);
	z1 = FUNC3("msqrt", 0);
	z2 = FUNC3("msqrt", 0);
	z3 = FUNC3("msqrt", 0);
	do {
		FUNC8("msqrt", x, ox);
		FUNC6("msqrt", nmp, x, z1, z2, c);
		FUNC4("msqrt", x, z1, z2);
		FUNC11("msqrt", z2, 2, x, &i, c);
		FUNC9("msqrt", ox, x, z3);
	} while (FUNC5("msqrt", z3, tolerance) == 1);
	FUNC8("msqrt", x, xmp);
	FUNC10("msqrt", x, x, z1, c);
	FUNC9("msqrt", nmp, z1, z2);
	FUNC8("msqrt", z2, rmp);
	FUNC7("msqrt", tolerance);
	FUNC7("msqrt", ox);
	FUNC7("msqrt", x);
	FUNC7("msqrt", z1);
	FUNC7("msqrt", z2);
	FUNC7("msqrt", z3);
	FUNC0(c);
}