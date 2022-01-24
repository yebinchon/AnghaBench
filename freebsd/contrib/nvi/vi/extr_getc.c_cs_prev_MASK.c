#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cs_flags; int cs_lno; size_t cs_cno; int /*<<< orphan*/ * cs_bp; int /*<<< orphan*/  cs_ch; int /*<<< orphan*/  cs_len; } ;
typedef  TYPE_1__ VCS ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
#define  CS_EMP 131 
#define  CS_EOF 130 
#define  CS_EOL 129 
#define  CS_SOF 128 
 int /*<<< orphan*/  DBG_FATAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC3(SCR *sp, VCS *csp)
{
	switch (csp->cs_flags) {
	case CS_EMP:				/* EMP; get previous line. */
	case CS_EOL:				/* EOL; get previous line. */
		if (csp->cs_lno == 1) {		/* SOF. */
			csp->cs_flags = CS_SOF;
			break;
		}
		if (FUNC1(sp,			/* The line should exist. */
		    --csp->cs_lno, DBG_FATAL, &csp->cs_bp, &csp->cs_len)) {
			++csp->cs_lno;
			return (1);
		}
		if (csp->cs_len == 0 || FUNC2(csp->cs_bp, csp->cs_len)) {
			csp->cs_cno = 0;
			csp->cs_flags = CS_EMP;
		} else {
			csp->cs_flags = 0;
			csp->cs_cno = csp->cs_len - 1;
			csp->cs_ch = csp->cs_bp[csp->cs_cno];
		}
		break;
	case CS_EOF:				/* EOF: get previous char. */
	case 0:
		if (csp->cs_cno == 0)
			if (csp->cs_lno == 1)
				csp->cs_flags = CS_SOF;
			else
				csp->cs_flags = CS_EOL;
		else
			csp->cs_ch = csp->cs_bp[--csp->cs_cno];
		break;
	case CS_SOF:				/* SOF. */
		break;
	default:
		FUNC0();
		/* NOTREACHED */
	}
	return (0);
}