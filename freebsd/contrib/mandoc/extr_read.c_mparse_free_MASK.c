#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mparse {int /*<<< orphan*/  secondary; int /*<<< orphan*/  roff; TYPE_1__* man; } ;
struct TYPE_2__ {int /*<<< orphan*/  manmac; int /*<<< orphan*/  mdocmac; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mparse*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct mparse *curp)
{
	FUNC4(curp->man->mdocmac);
	FUNC4(curp->man->manmac);
	FUNC3(curp->man);
	FUNC2(curp->roff);
	FUNC1(curp->secondary);
	FUNC0(curp);
}