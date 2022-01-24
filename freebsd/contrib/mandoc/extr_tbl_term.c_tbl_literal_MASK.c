#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* cols; } ;
struct termp {TYPE_2__ tbl; } ;
struct tbl_dat {int hspans; TYPE_3__* layout; int /*<<< orphan*/  string; } ;
struct roffcol {size_t width; } ;
struct TYPE_6__ {int col; int pos; } ;
struct TYPE_4__ {scalar_t__ width; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASCII_NBRSP ; 
#define  TBL_CELL_CENTRE 130 
#define  TBL_CELL_LONG 129 
#define  TBL_CELL_RIGHT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct termp*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct termp*,struct tbl_dat const*) ; 
 size_t FUNC3 (struct termp*,int) ; 
 size_t FUNC4 (struct termp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct termp *tp, const struct tbl_dat *dp,
		const struct roffcol *col)
{
	size_t		 len, padl, padr, width;
	int		 ic, hspans;

	FUNC0(dp->string);
	len = FUNC4(tp, dp->string);
	width = col->width;
	ic = dp->layout->col;
	hspans = dp->hspans;
	while (hspans--)
		width += tp->tbl.cols[++ic].width + 3;

	padr = width > len ? width - len : 0;
	padl = 0;

	switch (dp->layout->pos) {
	case TBL_CELL_LONG:
		padl = FUNC3(tp, 1);
		padr = padr > padl ? padr - padl : 0;
		break;
	case TBL_CELL_CENTRE:
		if (2 > padr)
			break;
		padl = padr / 2;
		padr -= padl;
		break;
	case TBL_CELL_RIGHT:
		padl = padr;
		padr = 0;
		break;
	default:
		break;
	}

	FUNC1(tp, ASCII_NBRSP, padl);
	FUNC2(tp, dp);
	FUNC1(tp, ASCII_NBRSP, padr);
}