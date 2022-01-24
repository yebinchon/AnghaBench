#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  root; scalar_t__ count; } ;
struct mesh_area {int /*<<< orphan*/ * jostle_last; int /*<<< orphan*/ * jostle_first; int /*<<< orphan*/ * forever_last; int /*<<< orphan*/ * forever_first; scalar_t__ num_forever_states; scalar_t__ num_detached_states; scalar_t__ num_reply_states; scalar_t__ num_reply_addrs; TYPE_1__ all; TYPE_1__ run; int /*<<< orphan*/  stats_dropped; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mesh_state_compare ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void
FUNC2(struct mesh_area* mesh)
{
	/* free all query states */
	while(mesh->all.count)
		FUNC0(mesh->all.root);
	mesh->stats_dropped += mesh->num_reply_addrs;
	/* clear mesh area references */
	FUNC1(&mesh->run, &mesh_state_compare);
	FUNC1(&mesh->all, &mesh_state_compare);
	mesh->num_reply_addrs = 0;
	mesh->num_reply_states = 0;
	mesh->num_detached_states = 0;
	mesh->num_forever_states = 0;
	mesh->forever_first = NULL;
	mesh->forever_last = NULL;
	mesh->jostle_first = NULL;
	mesh->jostle_last = NULL;
}