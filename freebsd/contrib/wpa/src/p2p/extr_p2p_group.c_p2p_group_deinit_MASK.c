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
struct p2p_group {int /*<<< orphan*/  wfd_ie; int /*<<< orphan*/  noa; struct p2p_group* cfg; struct p2p_data* p2p; } ;
struct p2p_data {size_t num_groups; struct p2p_group** groups; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct p2p_group*) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_group*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct p2p_group *group)
{
	size_t g;
	struct p2p_data *p2p;

	if (group == NULL)
		return;

	p2p = group->p2p;

	for (g = 0; g < p2p->num_groups; g++) {
		if (p2p->groups[g] == group) {
			while (g + 1 < p2p->num_groups) {
				p2p->groups[g] = p2p->groups[g + 1];
				g++;
			}
			p2p->num_groups--;
			break;
		}
	}

	FUNC1(group);
	FUNC0(group->cfg);
	FUNC2(group->noa);
	FUNC2(group->wfd_ie);
	FUNC0(group);
}