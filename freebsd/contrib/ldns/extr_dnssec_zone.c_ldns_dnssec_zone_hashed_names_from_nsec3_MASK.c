#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ldns_rr ;
struct TYPE_9__ {scalar_t__ data; } ;
typedef  TYPE_1__ ldns_rbnode_t ;
struct TYPE_10__ {int /*<<< orphan*/  names; int /*<<< orphan*/ * hashed_names; int /*<<< orphan*/ * _nsec3params; } ;
typedef  TYPE_2__ ldns_dnssec_zone ;
typedef  int /*<<< orphan*/  ldns_dnssec_name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* LDNS_RBTREE_NULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ldns_dname_compare_v ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ldns_hashed_names_node_free ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(
		ldns_dnssec_zone* zone, ldns_rr* nsec3rr)
{
	ldns_rbnode_t* current_node;
	ldns_dnssec_name* current_name;

	FUNC1(zone != NULL);
	FUNC1(nsec3rr != NULL);

	if (zone->hashed_names) {
		FUNC6(zone->hashed_names,
				ldns_hashed_names_node_free, NULL);
		FUNC0(zone->hashed_names);
	}
	zone->_nsec3params = nsec3rr;

	/* So this is a NSEC3 zone.
	* Calculate hashes for all names already in the zone
	*/
	zone->hashed_names = FUNC3(ldns_dname_compare_v);
	if (zone->hashed_names == NULL) {
		return;
	}
	for ( current_node  = FUNC4(zone->names)
	    ; current_node != LDNS_RBTREE_NULL
	    ; current_node  = FUNC5(current_node)
	    ) {
		current_name = (ldns_dnssec_name *) current_node->data;
		FUNC2(zone, current_name, nsec3rr);

	}
}