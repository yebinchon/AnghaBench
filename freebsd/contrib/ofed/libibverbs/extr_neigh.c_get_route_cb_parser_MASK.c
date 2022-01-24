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
struct rtnl_route {int dummy; } ;
struct rtnl_nexthop {int dummy; } ;
struct rtnl_link {int dummy; } ;
struct nl_object {int dummy; } ;
struct nl_addr {int dummy; } ;
struct get_neigh_handler {int oif; int /*<<< orphan*/ * src; void* found_ll_addr; int /*<<< orphan*/ * dst; int /*<<< orphan*/  link_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENETUNREACH ; 
 int RTN_BLACKHOLE ; 
 int RTN_LOCAL ; 
 int RTN_PROHIBIT ; 
 int RTN_THROW ; 
 int RTN_UNREACHABLE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void**) ; 
 void* FUNC1 (struct nl_addr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct rtnl_link* FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct nl_addr* FUNC4 (struct rtnl_link*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtnl_link*) ; 
 struct nl_addr* FUNC6 (struct rtnl_route*) ; 
 int FUNC7 (struct rtnl_route*) ; 
 struct rtnl_nexthop* FUNC8 (struct rtnl_route*,int /*<<< orphan*/ ) ; 
 struct nl_addr* FUNC9 (struct rtnl_nexthop*) ; 
 int FUNC10 (struct rtnl_nexthop*) ; 

__attribute__((used)) static void FUNC11(struct nl_object *obj, void *arg)
{
	struct get_neigh_handler *neigh_handler =
		(struct get_neigh_handler *)arg;

	struct rtnl_route *route = (struct rtnl_route *)obj;
	struct nl_addr *gateway = NULL;
	struct nl_addr *src = FUNC6(route);
	int oif;
	int type = FUNC7(route);
	struct rtnl_link *link;

	struct rtnl_nexthop *nh = FUNC8(route, 0);

	if (nh != NULL)
		gateway = FUNC9(nh);
	oif = FUNC10(nh);

	if (gateway) {
		FUNC2(neigh_handler->dst);
		neigh_handler->dst = FUNC1(gateway);
	}

	if (RTN_BLACKHOLE == type ||
	    RTN_UNREACHABLE == type ||
	    RTN_PROHIBIT == type ||
	    RTN_THROW == type) {
		errno = ENETUNREACH;
		goto err;
	}

	if (!neigh_handler->src && src)
		neigh_handler->src = FUNC1(src);

	if (neigh_handler->oif < 0 && oif > 0)
		neigh_handler->oif = oif;

	/* Link Local */
	if (RTN_LOCAL == type) {
		struct nl_addr *lladdr;

		link = FUNC3(neigh_handler->link_cache,
				     neigh_handler->oif);

		if (link == NULL)
			goto err;

		lladdr = FUNC4(link);

		if (lladdr == NULL)
			goto err_link;

		neigh_handler->found_ll_addr = FUNC1(lladdr);
		FUNC5(link);
	} else {
		FUNC0(
			neigh_handler->dst,
			&neigh_handler->found_ll_addr);
	}

	return;

err_link:
	FUNC5(link);
err:
	if (neigh_handler->src) {
		FUNC2(neigh_handler->src);
		neigh_handler->src = NULL;
	}
}