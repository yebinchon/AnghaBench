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
struct wpabuf {int dummy; } ;
struct p2p_group_member {struct p2p_group_member* next; } ;
struct p2p_group {struct p2p_group_member* members; int /*<<< orphan*/  p2p; } ;

/* Variables and functions */
 int /*<<< orphan*/  P2P_ATTR_GROUP_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,struct p2p_group_member*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int /*<<< orphan*/ ) ; 

void FUNC6(struct p2p_group *group, struct wpabuf *buf,
			    int max_clients)
{
	u8 *group_info;
	int count = 0;
	struct p2p_group_member *m;

	FUNC2(group->p2p, "* P2P Group Info");
	group_info = FUNC3(buf, 0);
	FUNC5(buf, P2P_ATTR_GROUP_INFO);
	FUNC4(buf, 0); /* Length to be filled */
	for (m = group->members; m; m = m->next) {
		FUNC1(buf, m);
		count++;
		if (max_clients >= 0 && count >= max_clients)
			break;
	}
	FUNC0(group_info + 1,
		     (u8 *) FUNC3(buf, 0) - group_info - 3);
}