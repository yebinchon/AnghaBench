#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  vlarb_low_list; int /*<<< orphan*/  vlarb_high_list; int /*<<< orphan*/  across_list; int /*<<< orphan*/  group_list; } ;
typedef  TYPE_1__ osm_qos_vlarb_scope_t ;

/* Variables and functions */
 int /*<<< orphan*/  __free_single_element ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(osm_qos_vlarb_scope_t * p)
{
	if (!p)
		return;

	FUNC0(&p->group_list, __free_single_element, NULL);
	FUNC0(&p->across_list, __free_single_element, NULL);
	FUNC0(&p->vlarb_high_list, __free_single_element, NULL);
	FUNC0(&p->vlarb_low_list, __free_single_element, NULL);

	FUNC2(&p->group_list);
	FUNC2(&p->across_list);
	FUNC2(&p->vlarb_high_list);
	FUNC2(&p->vlarb_low_list);

	FUNC1(&p->group_list);
	FUNC1(&p->across_list);
	FUNC1(&p->vlarb_high_list);
	FUNC1(&p->vlarb_low_list);

	FUNC3(p);
}