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
typedef  scalar_t__ recno_t ;
struct TYPE_4__ {size_t ai; size_t len; int /*<<< orphan*/ * lb; int /*<<< orphan*/  lb_len; } ;
typedef  TYPE_1__ TEXT ;
typedef  int /*<<< orphan*/  SCR ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBG_FATAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(SCR *sp, recno_t lno, TEXT *aitp, size_t len, TEXT *tp)
{
	size_t nlen;
	CHAR_T *p, *t;

	if (aitp == NULL) {
		/*
		 * If the ex append command is executed with an address of 0,
		 * it's possible to get here with a line number of 0.  Return
		 * an indent of 0.
		 */
		if (lno == 0) {
			tp->ai = 0;
			return (0);
		}
		if (FUNC2(sp, lno, DBG_FATAL, &t, &len))
			return (1);
	} else
		t = aitp->lb;

	/* Count whitespace characters. */
	for (p = t; len > 0; ++p, --len)
		if (!FUNC3(*p))
			break;

	/* Set count, check for no indentation. */
	if ((nlen = (p - t)) == 0)
		return (0);

	/* Make sure the buffer's big enough. */
	FUNC0(sp, tp->lb, tp->lb_len, tp->len + nlen);

	/* Copy the buffer's current contents up. */
	if (tp->len != 0)
		FUNC1(tp->lb + nlen, tp->lb, tp->len);
	tp->len += nlen;

	/* Copy the indentation into the new buffer. */
	FUNC1(tp->lb, t, nlen);

	/* Set the autoindent count. */
	tp->ai = nlen;
	return (0);
}