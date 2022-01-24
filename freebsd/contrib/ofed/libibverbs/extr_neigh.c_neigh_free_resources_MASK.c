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
struct get_neigh_handler {int /*<<< orphan*/ * sock; int /*<<< orphan*/ * link_cache; int /*<<< orphan*/ * route_cache; int /*<<< orphan*/ * neigh_cache; int /*<<< orphan*/ * found_ll_addr; int /*<<< orphan*/ * dst; int /*<<< orphan*/ * src; int /*<<< orphan*/ * filter_neigh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct get_neigh_handler *neigh_handler)
{
	/* Should be released first because it's holding a reference to dst */
	if (neigh_handler->filter_neigh != NULL) {
		FUNC5(neigh_handler->filter_neigh);
		neigh_handler->filter_neigh = NULL;
	}

	if (neigh_handler->src != NULL) {
		FUNC0(neigh_handler->src);
		neigh_handler->src = NULL;
	}

	if (neigh_handler->dst != NULL) {
		FUNC0(neigh_handler->dst);
		neigh_handler->dst = NULL;
	}

	if (neigh_handler->found_ll_addr != NULL) {
		FUNC0(neigh_handler->found_ll_addr);
		neigh_handler->found_ll_addr = NULL;
	}

	if (neigh_handler->neigh_cache != NULL) {
		FUNC2(neigh_handler->neigh_cache);
		FUNC1(neigh_handler->neigh_cache);
		neigh_handler->neigh_cache = NULL;
	}

	if (neigh_handler->route_cache != NULL) {
		FUNC2(neigh_handler->route_cache);
		FUNC1(neigh_handler->route_cache);
		neigh_handler->route_cache = NULL;
	}

	if (neigh_handler->link_cache != NULL) {
		FUNC2(neigh_handler->link_cache);
		FUNC1(neigh_handler->link_cache);
		neigh_handler->link_cache = NULL;
	}

	if (neigh_handler->sock != NULL) {
		FUNC3(neigh_handler->sock);
		FUNC4(neigh_handler->sock);
		neigh_handler->sock = NULL;
	}
}