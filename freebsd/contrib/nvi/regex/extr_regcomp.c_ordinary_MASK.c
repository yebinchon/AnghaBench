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
struct parse {TYPE_1__* g; } ;
typedef  int /*<<< orphan*/  UCHAR_T ;
struct TYPE_2__ {int cflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCHAR ; 
 int REG_ICASE ; 
 int /*<<< orphan*/  FUNC1 (struct parse*,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(struct parse *p, int ch)
{
/*
	cat_t *cap = p->g->categories;
*/

	if ((p->g->cflags&REG_ICASE) && FUNC2(ch) && FUNC3(ch) != ch)
		FUNC1(p, ch);
	else {
		FUNC0(OCHAR, (UCHAR_T)ch);
/*
		if (cap[ch] == 0)
			cap[ch] = p->g->ncategories++;
*/
	}
}