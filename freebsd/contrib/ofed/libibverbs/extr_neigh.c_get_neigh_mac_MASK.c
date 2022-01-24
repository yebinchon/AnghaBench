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
struct nl_addr {int dummy; } ;
struct get_neigh_handler {int /*<<< orphan*/  dst; int /*<<< orphan*/  oif; int /*<<< orphan*/  neigh_cache; } ;

/* Variables and functions */
 struct nl_addr* FUNC0 (struct nl_addr*) ; 
 struct rtnl_neigh* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nl_addr* FUNC2 (struct rtnl_neigh*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtnl_neigh*) ; 

__attribute__((used)) static struct nl_addr *FUNC4(struct get_neigh_handler *neigh_handler)
{
	struct rtnl_neigh *neigh;
	struct nl_addr *ll_addr = NULL;

	/* future optimization - if link local address - parse address and
	 * return mac now instead of doing so after the routing CB. This
	 * is of course referred to GIDs */
	neigh = FUNC1(neigh_handler->neigh_cache,
			       neigh_handler->oif,
			       neigh_handler->dst);
	if (neigh == NULL)
		return NULL;

	ll_addr = FUNC2(neigh);
	if (NULL != ll_addr)
		ll_addr = FUNC0(ll_addr);

	FUNC3(neigh);
	return ll_addr;
}