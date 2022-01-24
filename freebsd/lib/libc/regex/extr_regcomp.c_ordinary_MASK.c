#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int wint_t ;
struct parse {TYPE_1__* g; } ;
typedef  int /*<<< orphan*/  cset ;
struct TYPE_2__ {int cflags; int /*<<< orphan*/ * sets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct parse*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OANYOF ; 
 int /*<<< orphan*/  OCHAR ; 
 int OPDMASK ; 
 int REG_ICASE ; 
 int /*<<< orphan*/ * FUNC2 (struct parse*) ; 
 int /*<<< orphan*/  FUNC3 (struct parse*,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(struct parse *p, wint_t ch)
{
	cset *cs;

	if ((p->g->cflags&REG_ICASE) && FUNC4(ch) && FUNC5(ch) != ch)
		FUNC3(p, ch);
	else if ((ch & OPDMASK) == ch)
		FUNC1(OCHAR, ch);
	else {
		/*
		 * Kludge: character is too big to fit into an OCHAR operand.
		 * Emit a singleton set.
		 */
		if ((cs = FUNC2(p)) == NULL)
			return;
		FUNC0(p, cs, ch);
		FUNC1(OANYOF, (int)(cs - p->g->sets));
	}
}