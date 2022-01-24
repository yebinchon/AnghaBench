#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct env_lst {struct env_lst* value; struct env_lst* var; TYPE_2__* prev; TYPE_1__* next; } ;
struct TYPE_4__ {TYPE_1__* next; } ;
struct TYPE_3__ {TYPE_2__* prev; } ;

/* Variables and functions */
 struct env_lst* FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (struct env_lst*) ; 

void
FUNC2(unsigned char *var)
{
	struct env_lst *ep;

	if ((ep = FUNC0(var))) {
		ep->prev->next = ep->next;
		if (ep->next)
			ep->next->prev = ep->prev;
		if (ep->var)
			FUNC1(ep->var);
		if (ep->value)
			FUNC1(ep->value);
		FUNC1(ep);
	}
}