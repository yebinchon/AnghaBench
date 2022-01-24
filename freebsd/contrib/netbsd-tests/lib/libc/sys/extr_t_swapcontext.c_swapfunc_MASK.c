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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ alter_tlsbase ; 
 int /*<<< orphan*/  nctx ; 
 int /*<<< orphan*/  ntls ; 
 int /*<<< orphan*/  octx ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  val1 ; 
 int /*<<< orphan*/  val2 ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	ntls = FUNC2();
	FUNC3("after swapcontext TLS pointer = %p\n", ntls);

	if (alter_tlsbase) {
		FUNC1(ntls, &val1);
		FUNC3("TLS pointer modified by swapcontext()\n");
	} else {
		FUNC1(ntls, &val2);
		FUNC3("TLS pointer left untouched by swapcontext()\n");
	}

	/* Go back in main */
	FUNC0(FUNC4(&nctx, &octx));

	/* NOTREACHED */
	return;
}