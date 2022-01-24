#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
struct TYPE_9__ {int /*<<< orphan*/  rr; } ;
typedef  TYPE_1__ ldns_dnssec_trust_tree ;
struct TYPE_10__ {TYPE_6__* parent; int /*<<< orphan*/  packet_nodata; int /*<<< orphan*/  packet_qtype; int /*<<< orphan*/  packet_rcode; } ;
typedef  TYPE_2__ ldns_dnssec_data_chain ;
struct TYPE_11__ {int /*<<< orphan*/  signatures; int /*<<< orphan*/ * rrset; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_NSEC ; 
 scalar_t__ LDNS_RR_TYPE_NSEC3 ; 
 int /*<<< orphan*/  LDNS_STATUS_DNSSEC_NSEC_RR_NOT_COVERED ; 
 int /*<<< orphan*/  LDNS_STATUS_OK ; 
 TYPE_1__* FUNC0 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(
		ldns_dnssec_trust_tree *new_tree, 
		ldns_dnssec_data_chain *data_chain,
		time_t check_time)
{
	size_t i;
	ldns_rr_list *cur_rrset;
	ldns_rr *cur_parent_rr;
	ldns_dnssec_trust_tree *cur_parent_tree;
	ldns_status result;
	
	if (data_chain->parent && data_chain->parent->rrset) {
		cur_rrset = data_chain->parent->rrset;
		/* nsec? */
		if (cur_rrset && FUNC6(cur_rrset) > 0) {
			if (FUNC4(FUNC5(cur_rrset, 0)) ==
			    LDNS_RR_TYPE_NSEC3) {
				result = FUNC3(
					        new_tree->rr,
						   cur_rrset,
						   data_chain->parent->signatures,
						   data_chain->packet_rcode,
						   data_chain->packet_qtype,
						   data_chain->packet_nodata);
			} else if (FUNC4(FUNC5(cur_rrset, 0)) ==
					 LDNS_RR_TYPE_NSEC) {
				result = FUNC2(
					        new_tree->rr,
						   cur_rrset,
						   data_chain->parent->signatures);
			} else {
				/* unsigned zone, unsigned parent */
				result = LDNS_STATUS_OK;
			}
		} else {
			result = LDNS_STATUS_DNSSEC_NSEC_RR_NOT_COVERED;
		}
		for (i = 0; i < FUNC6(cur_rrset); i++) {
			cur_parent_rr = FUNC5(cur_rrset, i);
			cur_parent_tree = 
				FUNC0(
						data_chain->parent, 
						cur_parent_rr,
						check_time);
			(void) FUNC1(new_tree,
			            cur_parent_tree, NULL, result);
		}
	}
}