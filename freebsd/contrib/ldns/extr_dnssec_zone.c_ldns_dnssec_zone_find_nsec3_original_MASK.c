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
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_rbnode_t ;
struct TYPE_4__ {int /*<<< orphan*/ * hashed_names; int /*<<< orphan*/  _nsec3params; } ;
typedef  TYPE_1__ ldns_dnssec_zone ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_NSEC3 ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ldns_rbnode_t *
FUNC6(ldns_dnssec_zone *zone, ldns_rr *rr) {
	ldns_rdf *hashed_name;

	hashed_name = FUNC0(FUNC5(rr), 0);
	if (hashed_name == NULL) {
		return NULL;
	}
	if (FUNC4(rr) == LDNS_RR_TYPE_NSEC3 && ! zone->_nsec3params){

		FUNC1(zone, rr);
	}
	if (zone->hashed_names == NULL) {
		FUNC3(hashed_name);
		return NULL;
	}
	return  FUNC2(zone->hashed_names, hashed_name);
}