#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * c; } ;
struct TYPE_6__ {scalar_t__ blen1; TYPE_1__ bp1; } ;
struct TYPE_7__ {TYPE_2__ cw; int /*<<< orphan*/ * smso; int /*<<< orphan*/ * rmso; int /*<<< orphan*/ * cuu1; int /*<<< orphan*/ * cup; int /*<<< orphan*/ * el; } ;
typedef  TYPE_3__ CL_PRIVATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(CL_PRIVATE *clp)
{
	if (clp->el != NULL) {
		FUNC0(clp->el);
		clp->el = NULL;
	}
	if (clp->cup != NULL) {
		FUNC0(clp->cup);
		clp->cup = NULL;
	}
	if (clp->cuu1 != NULL) {
		FUNC0(clp->cuu1);
		clp->cuu1 = NULL;
	}
	if (clp->rmso != NULL) {
		FUNC0(clp->rmso);
		clp->rmso = NULL;
	}
	if (clp->smso != NULL) {
		FUNC0(clp->smso);
		clp->smso = NULL;
	}
	/* Required by libcursesw :) */
	if (clp->cw.bp1.c != NULL) {
		FUNC0(clp->cw.bp1.c);
		clp->cw.bp1.c = NULL;
		clp->cw.blen1 = 0;
	}
}