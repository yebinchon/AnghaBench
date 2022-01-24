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
struct tag {int dummy; } ;
struct html {int /*<<< orphan*/  flags; } ;
struct eqn_box {int /*<<< orphan*/ * first; } ;

/* Variables and functions */
 int /*<<< orphan*/  HTML_NONOSPACE ; 
 int /*<<< orphan*/  TAG_MATH ; 
 int /*<<< orphan*/  FUNC0 (struct html*,struct eqn_box const*) ; 
 struct tag* FUNC1 (struct html*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct html*,struct tag*) ; 

void
FUNC3(struct html *p, const struct eqn_box *bp)
{
	struct tag	*t;

	if (bp->first == NULL)
		return;

	t = FUNC1(p, TAG_MATH, "c", "eqn");

	p->flags |= HTML_NONOSPACE;
	FUNC0(p, bp);
	p->flags &= ~HTML_NONOSPACE;

	FUNC2(p, t);
}