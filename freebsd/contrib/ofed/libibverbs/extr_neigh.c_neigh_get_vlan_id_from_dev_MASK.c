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
typedef  int uint16_t ;
struct rtnl_link {int dummy; } ;
struct get_neigh_handler {int /*<<< orphan*/  oif; int /*<<< orphan*/  link_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  errno ; 
 struct rtnl_link* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rtnl_link*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtnl_link*) ; 
 int FUNC3 (struct rtnl_link*) ; 

uint16_t FUNC4(struct get_neigh_handler *neigh_handler)
{
	struct rtnl_link *link;
	int vid = 0xffff;

	link = FUNC0(neigh_handler->link_cache, neigh_handler->oif);
	if (link == NULL) {
		errno = EINVAL;
		return vid;
	}

	if (FUNC1(link))
		vid = FUNC3(link);
	FUNC2(link);
	return vid >= 0 && vid <= 0xfff ? vid : 0xffff;
}