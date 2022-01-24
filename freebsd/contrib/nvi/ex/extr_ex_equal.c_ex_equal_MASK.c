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
typedef  int /*<<< orphan*/  recno_t ;
struct TYPE_6__ {int /*<<< orphan*/  lno; } ;
struct TYPE_7__ {TYPE_1__ addr1; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_2__ EXCMD ;

/* Variables and functions */
 int /*<<< orphan*/  E_ADDR_DEF ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

int
FUNC4(SCR *sp, EXCMD *cmdp)
{
	recno_t lno;

	FUNC1(sp, cmdp);

	/*
	 * Print out the line number matching the specified address,
	 * or the number of the last line in the file if no address
	 * specified.
	 *
	 * !!!
	 * Historically, ":0=" displayed 0, and ":=" or ":1=" in an
	 * empty file displayed 1.  Until somebody complains loudly,
	 * we're going to do it right.  The tables in excmd.c permit
	 * lno to get away with any address from 0 to the end of the
	 * file, which, in an empty file, is 0.
	 */
	if (FUNC0(cmdp, E_ADDR_DEF)) {
		if (FUNC2(sp, &lno))
			return (1);
	} else
		lno = cmdp->addr1.lno;

	(void)FUNC3(sp, "%ld\n", lno);
	return (0);
}