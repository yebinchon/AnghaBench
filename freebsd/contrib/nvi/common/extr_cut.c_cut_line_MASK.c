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
struct TYPE_7__ {size_t len; int /*<<< orphan*/  textq; } ;
struct TYPE_6__ {size_t len; int /*<<< orphan*/  lb; } ;
typedef  TYPE_1__ TEXT ;
typedef  int /*<<< orphan*/  SCR ;
typedef  int /*<<< orphan*/  CHAR_T ;
typedef  TYPE_2__ CB ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_FATAL ; 
 size_t ENTIRE_LINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  q ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

int
FUNC4(
	SCR *sp,
	recno_t lno,
	size_t fcno,
	size_t clen,
	CB *cbp)
{
	TEXT *tp;
	size_t len;
	CHAR_T *p;

	/* Get the line. */
	if (FUNC2(sp, lno, DBG_FATAL, &p, &len))
		return (1);

	/* Create a TEXT structure that can hold the entire line. */
	if ((tp = FUNC3(sp, NULL, 0, len)) == NULL)
		return (1);

	/*
	 * If the line isn't empty and it's not the entire line,
	 * copy the portion we want, and reset the TEXT length.
	 */
	if (len != 0) {
		if (clen == ENTIRE_LINE)
			clen = len - fcno;
		FUNC0(tp->lb, p + fcno, clen);
		tp->len = clen;
	}

	/* Append to the end of the cut buffer. */
	FUNC1(cbp->textq, tp, q);
	cbp->len += tp->len;

	return (0);
}