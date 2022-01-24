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
typedef  int /*<<< orphan*/  u8 ;
struct p2p_group_member {int /*<<< orphan*/  dev_addr; struct p2p_group_member* next; } ;
struct p2p_group {struct p2p_group_member* members; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

int FUNC1(struct p2p_group *group, const u8 *dev_addr)
{
	struct p2p_group_member *m;

	for (m = group->members; m; m = m->next) {
		if (FUNC0(m->dev_addr, dev_addr, ETH_ALEN) == 0)
			return 1;
	}

	return 0;
}