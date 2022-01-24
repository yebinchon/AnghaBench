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
typedef  scalar_t__ time_t ;
struct ypmatch_ent {scalar_t__ ypc_expire_t; struct ypmatch_ent* ypc_next; } ;
struct dom_binding {struct ypmatch_ent* cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct dom_binding*,struct ypmatch_ent*,struct ypmatch_ent*) ; 

__attribute__((used)) static void
FUNC2(struct dom_binding *ypdb)
{
	struct ypmatch_ent	*c = ypdb->cache;
	struct ypmatch_ent	*n, *p = NULL;
	time_t			t;

	FUNC0(&t);

	while (c != NULL) {
		if (t >= c->ypc_expire_t) {
			n = c->ypc_next;
			FUNC1(ypdb, p, c);
			c = n;
		} else {
			p = c;
			c = c->ypc_next;
		}
	}

	return;
}