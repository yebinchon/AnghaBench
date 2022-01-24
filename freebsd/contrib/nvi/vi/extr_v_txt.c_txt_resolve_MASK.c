#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  recno_t ;
typedef  int /*<<< orphan*/  VI_PRIVATE ;
struct TYPE_6__ {int /*<<< orphan*/  lno; int /*<<< orphan*/  len; int /*<<< orphan*/  lb; } ;
typedef  int /*<<< orphan*/  TEXTH ;
typedef  TYPE_1__ TEXT ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LINE_RESET ; 
 int /*<<< orphan*/  SC_TINPUT ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TXT_AUTOINDENT ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  q ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(SCR *sp, TEXTH *tiqh, u_int32_t flags)
{
	VI_PRIVATE *vip;
	TEXT *tp;
	recno_t lno;
	int changed;

	/*
	 * The first line replaces a current line, and all subsequent lines
	 * are appended into the file.  Resolve autoindented characters for
	 * each line before committing it.  If the latter causes the line to
	 * change, we have to redisplay it, otherwise the information cached
	 * about the line will be wrong.
	 */
	vip = FUNC4(sp);
	tp = FUNC2(tiqh);

	if (FUNC1(TXT_AUTOINDENT))
		FUNC7(sp, tp, &changed);
	else
		changed = 0;
	if (FUNC6(sp, tp->lno, tp->lb, tp->len) ||
	    (changed && FUNC8(sp, tp->lno, LINE_RESET)))
		return (1);

	for (lno = tp->lno; (tp = FUNC3(tp, q)) != NULL; ++lno) {
		if (FUNC1(TXT_AUTOINDENT))
			FUNC7(sp, tp, &changed);
		else
			changed = 0;
		if (FUNC5(sp, 0, lno, tp->lb, tp->len) ||
		    (changed && FUNC8(sp, tp->lno, LINE_RESET)))
			return (1);
	}

	/*
	 * Clear the input flag, the look-aside buffer is no longer valid.
	 * Has to be done as part of text resolution, or upon return we'll
	 * be looking at incorrect data.
	 */
	FUNC0(sp, SC_TINPUT);

	return (0);
}