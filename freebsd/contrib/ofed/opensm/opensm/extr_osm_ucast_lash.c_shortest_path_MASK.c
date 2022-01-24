#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ q_state; int /*<<< orphan*/  id; int /*<<< orphan*/  used_channels; int /*<<< orphan*/ * dij_channels; TYPE_2__* node; } ;
typedef  TYPE_3__ switch_t ;
struct TYPE_11__ {TYPE_3__** switches; } ;
typedef  TYPE_4__ lash_t ;
typedef  int /*<<< orphan*/  cl_list_t ;
struct TYPE_9__ {unsigned int num_links; TYPE_1__** links; } ;
struct TYPE_8__ {size_t switch_id; } ;

/* Variables and functions */
 scalar_t__ UNQUEUED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static void FUNC6(lash_t * p_lash, int ir)
{
	switch_t **switches = p_lash->switches, *sw, *swi;
	unsigned int i;
	cl_list_t bfsq;

	FUNC1(&bfsq);
	FUNC3(&bfsq, 20);

	FUNC5(&bfsq, switches[ir]);

	while (!FUNC0(&bfsq)) {
		FUNC4(&bfsq, &sw);
		for (i = 0; i < sw->node->num_links; i++) {
			swi = switches[sw->node->links[i]->switch_id];
			if (swi->q_state == UNQUEUED) {
				FUNC5(&bfsq, swi);
				sw->dij_channels[sw->used_channels++] = swi->id;
			}
		}
	}

	FUNC2(&bfsq);
}