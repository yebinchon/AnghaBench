#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  tagfq; } ;
struct TYPE_7__ {struct TYPE_7__* name; } ;
typedef  TYPE_1__ TAGF ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_2__ EX_PRIVATE ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  q ; 

__attribute__((used)) static int
FUNC3(SCR *sp, TAGF *tfp)
{
	EX_PRIVATE *exp;

	exp = FUNC0(sp);
	FUNC1(exp->tagfq, tfp, q);
	FUNC2(tfp->name);
	FUNC2(tfp);
	return (0);
}