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
typedef  scalar_t__ u_int ;
struct icode {int dummy; } ;
struct block {scalar_t__ longjf; scalar_t__ longjt; int /*<<< orphan*/  stmts; } ;

/* Variables and functions */
 struct block* FUNC0 (struct block*) ; 
 struct block* FUNC1 (struct block*) ; 
 int /*<<< orphan*/  FUNC2 (struct icode*,struct block*) ; 
 scalar_t__ FUNC3 (struct icode*,struct block*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int
FUNC5(struct icode *ic, struct block *p)
{
	u_int n;

	if (p == 0 || FUNC3(ic, p))
		return 0;
	FUNC2(ic, p);
	n = FUNC5(ic, FUNC1(p)) + FUNC5(ic, FUNC0(p));
	return FUNC4(p->stmts) + n + 1 + p->longjt + p->longjf;
}