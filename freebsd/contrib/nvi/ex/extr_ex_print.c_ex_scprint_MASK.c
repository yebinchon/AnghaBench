#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int cno; int /*<<< orphan*/  lno; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_1__ MARK ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_FATAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_NUMBER ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,int,int /*<<< orphan*/ ,char) ; 

int
FUNC6(SCR *sp, MARK *fp, MARK *tp)
{
	CHAR_T *p;
	size_t col, len;

	col = 0;
	if (FUNC2(sp, O_NUMBER)) {
		p = FUNC1("        ");
		if (FUNC5(sp, p, &col, 8, 0, 0))
			return (1);
	}

	if (FUNC3(sp, fp->lno, DBG_FATAL, &p, &len))
		return (1);

	if (FUNC5(sp, p, &col, fp->cno, 0, ' '))
		return (1);
	p += fp->cno;
	if (FUNC5(sp,
	    p, &col, tp->cno == fp->cno ? 1 : tp->cno - fp->cno, 0, '^'))
		return (1);
	if (FUNC0(sp))
		return (1);
	p = FUNC1("[ynq]");		/* XXX: should be msg_cat. */
	if (FUNC5(sp, p, &col, 5, 0, 0))
		return (1);
	(void)FUNC4(sp);
	return (0);
}