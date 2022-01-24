#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  bn; } ;
typedef  TYPE_1__ MINT ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 TYPE_1__* FUNC6 (char const*,short) ; 
 int /*<<< orphan*/  FUNC7 (char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 char* FUNC9 (char const*,TYPE_1__*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 short FUNC11 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC12(const char *msg, const MINT *nmp, short d, MINT *qmp, short *ro,
    BN_CTX *c)
{
	MINT *dmp, *rmp;
	BIGNUM *q, *r;
	char *s;

	r = NULL;
	q = FUNC3();
	if (q != NULL)
		r = FUNC3();
	if (q == NULL || r == NULL)
		FUNC5(msg);
	dmp = FUNC6(msg, d);
	rmp = FUNC6(msg, 0);
	FUNC0(msg, FUNC1(q, r, nmp->bn, dmp->bn, c));
	FUNC8(msg, q, qmp);
	FUNC8(msg, r, rmp);
	s = FUNC9(msg, rmp);
	errno = 0;
	*ro = FUNC11(s, NULL, 16);
	if (errno != 0)
		FUNC4(("%s underflow or overflow", msg));
	FUNC10(s);
	FUNC7(msg, dmp);
	FUNC7(msg, rmp);
	FUNC2(r);
	FUNC2(q);
}