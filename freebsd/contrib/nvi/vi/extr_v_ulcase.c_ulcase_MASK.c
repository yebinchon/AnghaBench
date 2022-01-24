#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  recno_t ;
typedef  scalar_t__ UCHAR_T ;
typedef  int /*<<< orphan*/  SCR ;
typedef  scalar_t__ CHAR_T ;
typedef  scalar_t__ ARG_CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*,size_t,size_t) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*,size_t) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,size_t) ; 

__attribute__((used)) static int
FUNC8(SCR *sp, recno_t lno, CHAR_T *lp, size_t len, size_t scno, size_t ecno)
{
	size_t blen;
	int change, rval;
	ARG_CHAR_T ch;
	CHAR_T *p, *t, *bp;

	FUNC1(sp, bp, blen, len);
	FUNC4(bp, lp, len);

	change = rval = 0;
	for (p = bp + scno, t = bp + ecno + 1; p < t; ++p) {
		ch = (UCHAR_T)*p;
		if (FUNC2(ch)) {
			*p = FUNC6(ch);
			change = 1;
		} else if (FUNC3(ch)) {
			*p = FUNC5(ch);
			change = 1;
		}
	}

	if (change && FUNC7(sp, lno, bp, len))
		rval = 1;

	FUNC0(sp, bp, blen);
	return (rval);
}