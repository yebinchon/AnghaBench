#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef  TYPE_1__ ibnd_node_t ;
struct TYPE_8__ {TYPE_1__* nodes; struct TYPE_8__* next; struct TYPE_8__* chassis; } ;
typedef  TYPE_2__ ibnd_fabric_t ;
typedef  TYPE_2__ ibnd_chassis_t ;
typedef  int /*<<< orphan*/  f_internal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void FUNC3(ibnd_fabric_t * fabric)
{
	ibnd_node_t *node = NULL;
	ibnd_node_t *next = NULL;
	ibnd_chassis_t *ch, *ch_next;

	if (!fabric)
		return;

	ch = fabric->chassis;
	while (ch) {
		ch_next = ch->next;
		FUNC2(ch);
		ch = ch_next;
	}
	node = fabric->nodes;
	while (node) {
		next = node->next;
		FUNC1(node);
		node = next;
	}
	FUNC0((f_internal_t *)fabric);
	FUNC2(fabric);
}