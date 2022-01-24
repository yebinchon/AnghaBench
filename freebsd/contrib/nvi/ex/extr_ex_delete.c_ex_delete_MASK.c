#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ recno_t ;
struct TYPE_14__ {scalar_t__ lno; } ;
struct TYPE_13__ {TYPE_6__ addr1; int /*<<< orphan*/  addr2; int /*<<< orphan*/  buffer; int /*<<< orphan*/  iflags; } ;
struct TYPE_12__ {scalar_t__ lno; } ;
typedef  TYPE_1__ SCR ;
typedef  TYPE_2__ EXCMD ;

/* Variables and functions */
 int /*<<< orphan*/  CUT_LINEMODE ; 
 int /*<<< orphan*/  E_C_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,scalar_t__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_6__*,int /*<<< orphan*/ *,int) ; 

int
FUNC5(SCR *sp, EXCMD *cmdp)
{
	recno_t lno;

	FUNC1(sp, cmdp);

	/*
	 * !!!
	 * Historically, lines deleted in ex were not placed in the numeric
	 * buffers.  We follow historic practice so that we don't overwrite
	 * vi buffers accidentally.
	 */
	if (FUNC2(sp,
	    FUNC0(cmdp->iflags, E_C_BUFFER) ? &cmdp->buffer : NULL,
	    &cmdp->addr1, &cmdp->addr2, CUT_LINEMODE))
		return (1);

	/* Delete the lines. */
	if (FUNC4(sp, &cmdp->addr1, &cmdp->addr2, 1))
		return (1);

	/* Set the cursor to the line after the last line deleted. */
	sp->lno = cmdp->addr1.lno;

	/* Or the last line in the file if deleted to the end of the file. */
	if (FUNC3(sp, &lno))
		return (1);
	if (sp->lno > lno)
		sp->lno = lno;
	return (0);
}