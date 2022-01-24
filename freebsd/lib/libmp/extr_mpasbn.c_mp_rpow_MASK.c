#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  bn; } ;
typedef  TYPE_1__ MINT ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_1__* FUNC7 (char*,short) ; 
 int /*<<< orphan*/  FUNC8 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC10(const MINT *bmp, short e, MINT *rmp)
{
	MINT *emp;
	BIGNUM *b;
	BN_CTX *c;

	b = NULL;
	c = FUNC1();
	if (c != NULL)
		b = FUNC5();
	if (c == NULL || b == NULL)
		FUNC6("rpow");
	emp = FUNC7("rpow", e);
	FUNC2("rpow", FUNC3(b, bmp->bn, emp->bn, c));
	FUNC9("rpow", b, rmp);
	FUNC8("rpow", emp);
	FUNC4(b);
	FUNC0(c);
}