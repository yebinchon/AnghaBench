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
typedef  int exadj_t ;
struct TYPE_3__ {int /*<<< orphan*/ * el; int /*<<< orphan*/ * cup; int /*<<< orphan*/ * cuu1; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_1__ CL_PRIVATE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
#define  EX_TERM_CE 129 
#define  EX_TERM_SCROLL 128 
 int /*<<< orphan*/  LINES ; 
 int MAX_CHARACTER_COLUMNS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  cl_putchar ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int
FUNC6(SCR *sp, exadj_t action)
{
	CL_PRIVATE *clp;
	int cnt;

	clp = FUNC0(sp);
	switch (action) {
	case EX_TERM_SCROLL:
		/* Move the cursor up one line if that's possible. */
		if (clp->cuu1 != NULL)
			(void)FUNC5(clp->cuu1, 1, cl_putchar);
		else if (clp->cup != NULL)
			(void)FUNC5(FUNC4(clp->cup,
			    0, LINES - 2), 1, cl_putchar);
		else
			return (0);
		/* FALLTHROUGH */
	case EX_TERM_CE:
		/* Clear the line. */
		if (clp->el != NULL) {
			(void)FUNC3('\r');
			(void)FUNC5(clp->el, 1, cl_putchar);
		} else {
			/*
			 * Historically, ex didn't erase the line, so, if the
			 * displayed line was only a single glyph, and <eof>
			 * was more than one glyph, the output would not fully
			 * overwrite the user's input.  To fix this, output
			 * the maxiumum character number of spaces.  Note,
			 * this won't help if the user entered extra prompt
			 * or <blank> characters before the command character.
			 * We'd have to do a lot of work to make that work, and
			 * it's almost certainly not worth the effort.
			 */
			for (cnt = 0; cnt < MAX_CHARACTER_COLUMNS; ++cnt)
				(void)FUNC3('\b');
			for (cnt = 0; cnt < MAX_CHARACTER_COLUMNS; ++cnt)
				(void)FUNC3(' ');
			(void)FUNC3('\r');
			(void)FUNC2(stdout);
		}
		break;
	default:
		FUNC1();
	}
	return (0);
}