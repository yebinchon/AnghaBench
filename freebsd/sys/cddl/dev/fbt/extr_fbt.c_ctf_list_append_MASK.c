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
struct TYPE_3__ {struct TYPE_3__* l_next; struct TYPE_3__* l_prev; } ;
typedef  TYPE_1__ ctf_list_t ;

/* Variables and functions */

__attribute__((used)) static void
FUNC0(ctf_list_t *lp, void *new)
{
	ctf_list_t *p = lp->l_prev;	/* p = tail list element */
	ctf_list_t *q = new;		/* q = new list element */

	lp->l_prev = q;
	q->l_prev = p;
	q->l_next = NULL;

	if (p != NULL)
		p->l_next = q;
	else
		lp->l_next = q;
}