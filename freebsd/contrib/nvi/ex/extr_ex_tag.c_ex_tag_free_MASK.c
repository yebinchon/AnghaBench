#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * tag_last; int /*<<< orphan*/  tagfq; int /*<<< orphan*/  tq; } ;
typedef  int /*<<< orphan*/  TAGQ ;
typedef  int /*<<< orphan*/  TAGF ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_1__ EX_PRIVATE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC5(SCR *sp)
{
	EX_PRIVATE *exp;
	TAGF *tfp;
	TAGQ *tqp;

	/* Free up tag information. */
	exp = FUNC0(sp);
	while ((tqp = FUNC1(exp->tq)) != NULL)
		FUNC4(sp, tqp);
	while ((tfp = FUNC1(exp->tagfq)) != NULL)
		FUNC3(sp, tfp);
	if (exp->tag_last != NULL)
		FUNC2(exp->tag_last);
	return (0);
}