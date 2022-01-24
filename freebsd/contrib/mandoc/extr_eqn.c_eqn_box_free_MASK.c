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
struct eqn_box {struct eqn_box* bottom; struct eqn_box* top; struct eqn_box* right; struct eqn_box* left; struct eqn_box* text; struct eqn_box* next; struct eqn_box* first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eqn_box*) ; 

void
FUNC1(struct eqn_box *bp)
{
	if (bp == NULL)
		return;

	if (bp->first)
		FUNC1(bp->first);
	if (bp->next)
		FUNC1(bp->next);

	FUNC0(bp->text);
	FUNC0(bp->left);
	FUNC0(bp->right);
	FUNC0(bp->top);
	FUNC0(bp->bottom);
	FUNC0(bp);
}