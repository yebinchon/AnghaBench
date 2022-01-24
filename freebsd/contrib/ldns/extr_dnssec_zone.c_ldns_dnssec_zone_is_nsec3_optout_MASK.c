#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ldns_rr ;
struct TYPE_9__ {scalar_t__ data; } ;
typedef  TYPE_1__ ldns_rbnode_t ;
struct TYPE_10__ {int /*<<< orphan*/  names; int /*<<< orphan*/  soa; } ;
typedef  TYPE_2__ ldns_dnssec_zone ;
struct TYPE_11__ {int /*<<< orphan*/ * nsec; } ;
typedef  TYPE_3__ ldns_dnssec_name ;

/* Variables and functions */
 TYPE_1__* LDNS_RBTREE_NULL ; 
 scalar_t__ LDNS_RR_TYPE_NSEC3 ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_NSEC3PARAM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

bool
FUNC5(const ldns_dnssec_zone* zone)
{
	ldns_rr* nsec3;
	ldns_rbnode_t* node;

	if (FUNC0(zone->soa, LDNS_RR_TYPE_NSEC3PARAM)) {
		node = FUNC2(zone->names);
		while (node != LDNS_RBTREE_NULL) {
			nsec3 = ((ldns_dnssec_name*)node->data)->nsec;
			if (nsec3 &&FUNC4(nsec3) 
					== LDNS_RR_TYPE_NSEC3 &&
					FUNC1(nsec3)) {
				return true;
			}
			node = FUNC3(node);
		}
	}
	return false;
}