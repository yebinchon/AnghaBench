#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
struct TYPE_8__ {int /*<<< orphan*/ * rrset; int /*<<< orphan*/ * rr; } ;
typedef  TYPE_1__ ldns_dnssec_trust_tree ;
struct TYPE_9__ {int /*<<< orphan*/ * rrset; } ;
typedef  TYPE_2__ ldns_dnssec_data_chain ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_DNSKEY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC9(
		ldns_dnssec_trust_tree *new_tree, 
		ldns_dnssec_data_chain *data_chain, 
		ldns_rr *cur_rr, 
		ldns_rr *cur_sig_rr,
		time_t check_time)
{
	size_t j;
	ldns_rr_list *cur_rrset = data_chain->rrset;
	ldns_dnssec_trust_tree *cur_parent_tree;
	ldns_rr *cur_parent_rr;
	uint16_t cur_keytag;
	ldns_status cur_status;

	cur_keytag = FUNC3(FUNC7(cur_sig_rr));

	for (j = 0; j < FUNC6(cur_rrset); j++) {
		cur_parent_rr = FUNC5(cur_rrset, j);
		if (cur_parent_rr != cur_rr &&
		    FUNC4(cur_parent_rr) == LDNS_RR_TYPE_DNSKEY) {
			if (FUNC0(cur_parent_rr) == cur_keytag
			    ) {
				cur_parent_tree = FUNC2();
				cur_parent_tree->rr = cur_parent_rr;
				cur_parent_tree->rrset = cur_rrset;
				cur_status = FUNC8(
						cur_rrset, cur_sig_rr, 
						cur_parent_rr, check_time);
				(void) FUNC1(new_tree,
				            cur_parent_tree, cur_sig_rr, cur_status);
			}
		}
	}
}