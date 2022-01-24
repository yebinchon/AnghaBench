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
struct wpabuf {int dummy; } ;
struct p2p_group_member {struct p2p_group_member* next; } ;
struct p2p_group {struct p2p_group_member* members; int /*<<< orphan*/  p2p; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct wpabuf*) ; 
 scalar_t__ FUNC1 (struct p2p_group_member*,struct wpabuf*) ; 

int FUNC2(struct p2p_group *group, struct wpabuf *wps)
{
	struct p2p_group_member *m;

	if (FUNC0(group->p2p, wps))
		return 1; /* Match with own device type */

	for (m = group->members; m; m = m->next) {
		if (FUNC1(m, wps))
			return 1; /* Match with group client device type */
	}

	/* No match with Requested Device Type */
	return 0;
}