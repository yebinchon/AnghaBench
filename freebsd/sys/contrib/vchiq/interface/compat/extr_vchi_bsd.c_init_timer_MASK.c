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
struct timer_list {scalar_t__ expires; int /*<<< orphan*/  callout; int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(struct timer_list *t)
{
	FUNC1(&t->mtx, "dahdi timer lock", NULL, MTX_SPIN);
	FUNC0(&t->callout, 1);
	t->expires = 0;
	/*
	 * function and data are not initialized intentionally:
	 * they are not initialized by Linux implementation too
	 */
}