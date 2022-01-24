#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  textq; } ;
struct TYPE_6__ {TYPE_2__ dcb_store; int /*<<< orphan*/  cutq; } ;
typedef  TYPE_1__ GS ;
typedef  TYPE_2__ CB ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  q ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(GS *gp)
{
	CB *cbp;

	/* Free cut buffer list. */
	while ((cbp = FUNC0(gp->cutq)) != NULL) {
		if (!FUNC2(cbp->textq))
			FUNC4(cbp->textq);
		FUNC1(gp->cutq, q);
		FUNC3(cbp);
	}

	/* Free default cut storage. */
	cbp = &gp->dcb_store;
	if (!FUNC2(cbp->textq))
		FUNC4(cbp->textq);
}