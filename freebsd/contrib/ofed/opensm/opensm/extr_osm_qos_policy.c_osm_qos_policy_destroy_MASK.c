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
typedef  int /*<<< orphan*/  osm_qos_vlarb_scope_t ;
typedef  int /*<<< orphan*/  osm_qos_sl2vl_scope_t ;
typedef  int /*<<< orphan*/  osm_qos_port_group_t ;
struct TYPE_4__ {scalar_t__ p_node_hash; int /*<<< orphan*/  qos_match_rules; int /*<<< orphan*/  qos_levels; int /*<<< orphan*/  sl2vl_tables; int /*<<< orphan*/  vlarb_tables; int /*<<< orphan*/  port_groups; } ;
typedef  TYPE_1__ osm_qos_policy_t ;
typedef  int /*<<< orphan*/  osm_qos_match_rule_t ;
typedef  int /*<<< orphan*/  osm_qos_level_t ;
typedef  scalar_t__ cl_list_iterator_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 

void FUNC13(osm_qos_policy_t * p_qos_policy)
{
	cl_list_iterator_t list_iterator;
	osm_qos_port_group_t *p_port_group = NULL;
	osm_qos_vlarb_scope_t *p_vlarb_scope = NULL;
	osm_qos_sl2vl_scope_t *p_sl2vl_scope = NULL;
	osm_qos_level_t *p_qos_level = NULL;
	osm_qos_match_rule_t *p_qos_match_rule = NULL;

	if (!p_qos_policy)
		return;

	list_iterator = FUNC2(&p_qos_policy->port_groups);
	while (list_iterator != FUNC1(&p_qos_policy->port_groups)) {
		p_port_group =
		    (osm_qos_port_group_t *) FUNC4(list_iterator);
		if (p_port_group)
			FUNC8(p_port_group);
		list_iterator = FUNC3(list_iterator);
	}
	FUNC5(&p_qos_policy->port_groups);
	FUNC0(&p_qos_policy->port_groups);

	list_iterator = FUNC2(&p_qos_policy->vlarb_tables);
	while (list_iterator != FUNC1(&p_qos_policy->vlarb_tables)) {
		p_vlarb_scope =
		    (osm_qos_vlarb_scope_t *) FUNC4(list_iterator);
		if (p_vlarb_scope)
			FUNC11(p_vlarb_scope);
		list_iterator = FUNC3(list_iterator);
	}
	FUNC5(&p_qos_policy->vlarb_tables);
	FUNC0(&p_qos_policy->vlarb_tables);

	list_iterator = FUNC2(&p_qos_policy->sl2vl_tables);
	while (list_iterator != FUNC1(&p_qos_policy->sl2vl_tables)) {
		p_sl2vl_scope =
		    (osm_qos_sl2vl_scope_t *) FUNC4(list_iterator);
		if (p_sl2vl_scope)
			FUNC10(p_sl2vl_scope);
		list_iterator = FUNC3(list_iterator);
	}
	FUNC5(&p_qos_policy->sl2vl_tables);
	FUNC0(&p_qos_policy->sl2vl_tables);

	list_iterator = FUNC2(&p_qos_policy->qos_levels);
	while (list_iterator != FUNC1(&p_qos_policy->qos_levels)) {
		p_qos_level = (osm_qos_level_t *) FUNC4(list_iterator);
		if (p_qos_level)
			FUNC9(p_qos_level);
		list_iterator = FUNC3(list_iterator);
	}
	FUNC5(&p_qos_policy->qos_levels);
	FUNC0(&p_qos_policy->qos_levels);

	list_iterator = FUNC2(&p_qos_policy->qos_match_rules);
	while (list_iterator != FUNC1(&p_qos_policy->qos_match_rules)) {
		p_qos_match_rule =
		    (osm_qos_match_rule_t *) FUNC4(list_iterator);
		if (p_qos_match_rule)
			FUNC7(p_qos_match_rule);
		list_iterator = FUNC3(list_iterator);
	}
	FUNC5(&p_qos_policy->qos_match_rules);
	FUNC0(&p_qos_policy->qos_match_rules);

	if (p_qos_policy->p_node_hash)
		FUNC12(p_qos_policy->p_node_hash);

	FUNC6(p_qos_policy);

	p_qos_policy = NULL;
}