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
struct sta_info {int /*<<< orphan*/  ip6addr; } ;
struct ip6addr {int /*<<< orphan*/  list; int /*<<< orphan*/  addr; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct in6_addr*,int) ; 
 struct ip6addr* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct sta_info *sta, struct in6_addr *addr)
{
	struct ip6addr *ip6addr;

	ip6addr = FUNC2(sizeof(*ip6addr));
	if (!ip6addr)
		return -1;

	FUNC1(&ip6addr->addr, addr, sizeof(*addr));

	FUNC0(&sta->ip6addr, &ip6addr->list);

	return 0;
}