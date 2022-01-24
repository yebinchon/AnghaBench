#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  destination_group_list; int /*<<< orphan*/  destination_list; int /*<<< orphan*/  source_group_list; int /*<<< orphan*/  source_list; } ;
typedef  TYPE_1__ osm_qos_match_rule_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

osm_qos_match_rule_t *FUNC2()
{
	osm_qos_match_rule_t *p =
	    (osm_qos_match_rule_t *) FUNC0(1, sizeof(osm_qos_match_rule_t));
	if (p) {
		FUNC1(&p->source_list, 10);
		FUNC1(&p->source_group_list, 10);
		FUNC1(&p->destination_list, 10);
		FUNC1(&p->destination_group_list, 10);
	}
	return p;
}