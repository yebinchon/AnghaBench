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
struct p2p_group_config {int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  (* idle_update ) (int /*<<< orphan*/ ,int) ;} ;
struct p2p_group {int group_formation; int beacon_update; struct p2p_group_config* cfg; struct p2p_data* p2p; } ;
struct p2p_data {struct p2p_group** groups; scalar_t__ num_groups; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct p2p_group*) ; 
 struct p2p_group** FUNC1 (struct p2p_group**,scalar_t__,int) ; 
 struct p2p_group* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct p2p_group*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

struct p2p_group * FUNC5(struct p2p_data *p2p,
				  struct p2p_group_config *config)
{
	struct p2p_group *group, **groups;

	group = FUNC2(sizeof(*group));
	if (group == NULL)
		return NULL;

	groups = FUNC1(p2p->groups, p2p->num_groups + 1,
				  sizeof(struct p2p_group *));
	if (groups == NULL) {
		FUNC0(group);
		return NULL;
	}
	groups[p2p->num_groups++] = group;
	p2p->groups = groups;

	group->p2p = p2p;
	group->cfg = config;
	group->group_formation = 1;
	group->beacon_update = 1;
	FUNC3(group);
	group->cfg->idle_update(group->cfg->cb_ctx, 1);

	return group;
}