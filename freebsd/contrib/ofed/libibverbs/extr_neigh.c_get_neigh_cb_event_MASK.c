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
struct rtnl_neigh {int dummy; } ;
struct nl_object {int dummy; } ;
struct get_neigh_handler {int /*<<< orphan*/ * found_ll_addr; scalar_t__ filter_neigh; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct nl_object*,struct nl_object*) ; 
 int /*<<< orphan*/ * FUNC2 (struct rtnl_neigh*) ; 

__attribute__((used)) static void FUNC3(struct nl_object *obj, void *arg)
{
	struct get_neigh_handler *neigh_handler =
		(struct get_neigh_handler *)arg;
	/* assumed serilized callback (no parallel execution of function) */
	if (FUNC1(
		obj,
		(struct nl_object *)neigh_handler->filter_neigh)) {
		struct rtnl_neigh *neigh = (struct rtnl_neigh *)obj;
		/* check that we didn't set it already */
		if (neigh_handler->found_ll_addr == NULL) {
			if (FUNC2(neigh) == NULL)
				return;

			neigh_handler->found_ll_addr =
				FUNC0(FUNC2(neigh));
		}
	}
}