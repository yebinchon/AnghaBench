#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int recno_t ;
struct TYPE_13__ {int lno; } ;
struct TYPE_12__ {int /*<<< orphan*/ * gp; } ;
typedef  TYPE_1__ SCR ;
typedef  TYPE_2__ MARK ;
typedef  int /*<<< orphan*/  GS ;
typedef  int /*<<< orphan*/  EXCMD ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_FATAL ; 
 int /*<<< orphan*/  E_C_HASH ; 
 int /*<<< orphan*/  E_C_LIST ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,size_t,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,size_t*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 

int
FUNC10(SCR *sp, EXCMD *cmdp, MARK *fp, MARK *tp, u_int32_t flags)
{
	GS *gp;
	recno_t from, to;
	size_t col, len;
	CHAR_T *p;
	CHAR_T buf[10];

	FUNC3(sp, cmdp);

	gp = sp->gp;
	for (from = fp->lno, to = tp->lno; from <= to; ++from) {
		col = 0;

		/*
		 * Display the line number.  The %6 format is specified
		 * by POSIX 1003.2, and is almost certainly large enough.
		 * Check, though, just in case.
		 */
		if (FUNC2(E_C_HASH)) {
			if (from <= 999999) {
				FUNC5(buf, FUNC4(buf), FUNC1("%6u  "), from);
				p = buf;
			} else
				p = FUNC1("TOOBIG  ");
			if (FUNC8(sp, p, &col, 8, 0, 0))
				return (1);
		}

		/*
		 * Display the line.  The format for E_C_PRINT isn't very good,
		 * especially in handling end-of-line tabs, but they're almost
		 * backward compatible.
		 */
		if (FUNC6(sp, from, DBG_FATAL, &p, &len))
			return (1);

		if (len == 0 && !FUNC2(E_C_LIST))
			(void)FUNC9(sp, "\n");
		else if (FUNC7(sp, p, len, col, flags))
			return (1);

		if (FUNC0(sp))
			break;
	}
	return (0);
}