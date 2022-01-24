#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_10__ {size_t cols; int /*<<< orphan*/ * gp; } ;
typedef  TYPE_1__ SCR ;
typedef  int /*<<< orphan*/  GS ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  E_C_LIST ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 size_t FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_LIST ; 
 int /*<<< orphan*/  O_TABSTOP ; 
 size_t FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 

__attribute__((used)) static int
FUNC10(SCR *sp, const CHAR_T *p, size_t *colp, size_t len, 
	    u_int flags, int repeatc)
{
	CHAR_T ch;
	char *kp;
	GS *gp;
	size_t col, tlen, ts;

	if (FUNC6(sp, O_LIST))
		FUNC5(E_C_LIST);
	gp = sp->gp;
	ts = FUNC7(sp, O_TABSTOP);
	for (col = *colp; len--;)
		if ((ch = *p++) == FUNC3('\t') && !FUNC4(E_C_LIST))
			for (tlen = ts - col % ts;
			    col < sp->cols && tlen--; ++col) {
				(void)FUNC8(sp,
				    "%c", repeatc ? repeatc : ' ');
				if (FUNC0(sp))
					goto intr;
			}
		else {
			kp = FUNC2(sp, ch);
			tlen = FUNC1(sp, ch);

			/*
			 * Start a new line if the last character does not fit
			 * into the current line.  The implicit new lines are
			 * not interruptible.
			 */
			if (col + tlen > sp->cols) {
				col = 0;
				(void)FUNC9(sp, "\n");
			}

			col += tlen;
			if (!repeatc) {
				(void)FUNC9(sp, kp);
				if (FUNC0(sp))
					goto intr;
			} else while (tlen--) {
				(void)FUNC8(sp, "%c", repeatc);
				if (FUNC0(sp))
					goto intr;
			}
			if (col == sp->cols) {
				col = 0;
				(void)FUNC9(sp, "\n");
			}
		}
intr:	*colp = col;
	return (0);
}