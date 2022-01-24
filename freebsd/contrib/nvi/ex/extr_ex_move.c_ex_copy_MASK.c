#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int recno_t ;
struct TYPE_16__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_20__ {int /*<<< orphan*/  textq; int /*<<< orphan*/  flags; TYPE_1__ member_0; } ;
struct TYPE_18__ {int lno; scalar_t__ cno; } ;
struct TYPE_19__ {int lineno; TYPE_3__ addr2; TYPE_3__ addr1; } ;
struct TYPE_17__ {int lno; scalar_t__ cno; } ;
typedef  TYPE_2__ SCR ;
typedef  TYPE_3__ MARK ;
typedef  TYPE_4__ EXCMD ;
typedef  TYPE_5__ CB ;

/* Variables and functions */
 int /*<<< orphan*/  CB_LMODE ; 
 int /*<<< orphan*/  ENTIRE_LINE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_5__*,int /*<<< orphan*/ *,TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(SCR *sp, EXCMD *cmdp)
{
	CB cb = { 0 };
	MARK fm1, fm2, m, tm;
	recno_t cnt;
	int rval;

	rval = 0;

	FUNC0(sp, cmdp);

	/*
	 * It's possible to copy things into the area that's being
	 * copied, e.g. "2,5copy3" is legitimate.  Save the text to
	 * a cut buffer.
	 */
	fm1 = cmdp->addr1;
	fm2 = cmdp->addr2;
	FUNC1(cb.textq);
	for (cnt = fm1.lno; cnt <= fm2.lno; ++cnt)
		if (FUNC2(sp, cnt, 0, ENTIRE_LINE, &cb)) {
			rval = 1;
			goto err;
		}
	cb.flags |= CB_LMODE;

	/* Put the text into place. */
	tm.lno = cmdp->lineno;
	tm.cno = 0;
	if (FUNC3(sp, &cb, NULL, &tm, &m, 1))
		rval = 1;
	else {
		/*
		 * Copy puts the cursor on the last line copied.  The cursor
		 * returned by the put routine is the first line put, not the
		 * last, because that's the historic semantic of vi.
		 */
		cnt = (fm2.lno - fm1.lno) + 1;
		sp->lno = m.lno + (cnt - 1);
		sp->cno = 0;
	}
err:	FUNC4(cb.textq);
	return (rval);
}