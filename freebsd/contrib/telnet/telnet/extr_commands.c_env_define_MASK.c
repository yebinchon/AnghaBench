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
struct env_lst {int export; void* value; void* var; int /*<<< orphan*/  welldefined; struct env_lst* prev; struct env_lst* next; } ;

/* Variables and functions */
 struct env_lst* FUNC0 (unsigned char const*) ; 
 struct env_lst envlisthead ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const*) ; 
 void* FUNC4 (unsigned char const*) ; 

struct env_lst *
FUNC5(const unsigned char *var, unsigned char *value)
{
	struct env_lst *ep;

	if ((ep = FUNC0(var))) {
		if (ep->var)
			FUNC1(ep->var);
		if (ep->value)
			FUNC1(ep->value);
	} else {
		ep = (struct env_lst *)FUNC2(sizeof(struct env_lst));
		ep->next = envlisthead.next;
		envlisthead.next = ep;
		ep->prev = &envlisthead;
		if (ep->next)
			ep->next->prev = ep;
	}
	ep->welldefined = FUNC3(var);
	ep->export = 1;
	ep->var = FUNC4(var);
	ep->value = FUNC4(value);
	return(ep);
}