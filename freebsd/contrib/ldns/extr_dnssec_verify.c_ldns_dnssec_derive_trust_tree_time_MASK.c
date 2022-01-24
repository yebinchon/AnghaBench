#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
struct TYPE_14__ {int /*<<< orphan*/ * rrset; int /*<<< orphan*/ * rr; } ;
typedef  TYPE_1__ ldns_dnssec_trust_tree ;
struct TYPE_15__ {scalar_t__ parent; int /*<<< orphan*/ * signatures; int /*<<< orphan*/ * rrset; } ;
typedef  TYPE_2__ ldns_dnssec_data_chain ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_NSEC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

ldns_dnssec_trust_tree *
FUNC10(
		ldns_dnssec_data_chain *data_chain, 
		ldns_rr *rr, 
		time_t check_time
		)
{
	ldns_rr_list *cur_rrset;
	ldns_rr_list *cur_sigs;
	ldns_rr *cur_rr = NULL;
	ldns_rr *cur_sig_rr;
	size_t i, j;

	ldns_dnssec_trust_tree *new_tree = FUNC5();
        if(!new_tree)
                return NULL;
	
	if (data_chain && data_chain->rrset) {
		cur_rrset = data_chain->rrset;
	
		cur_sigs = data_chain->signatures;

		if (rr) {
			cur_rr = rr;
		}

		if (!cur_rr && FUNC8(cur_rrset) > 0) {
			cur_rr = FUNC7(cur_rrset, 0);
		}

		if (cur_rr) {
			new_tree->rr = cur_rr;
			new_tree->rrset = cur_rrset;
			/* there are three possibilities:
			   1 - 'normal' rrset, signed by a key
			   2 - dnskey signed by other dnskey
			   3 - dnskey proven by higher level DS
			   (data denied by nsec is a special case that can
			   occur in multiple places)
				   
			*/
			if (cur_sigs) {
				for (i = 0; i < FUNC8(cur_sigs); i++) {
					/* find the appropriate key in the parent list */
					cur_sig_rr = FUNC7(cur_sigs, i);

					if (FUNC6(cur_rr) == LDNS_RR_TYPE_NSEC) {
						if (FUNC0(FUNC9(cur_sig_rr),
										   FUNC9(cur_rr)))
							{
								/* find first that does match */

								for (j = 0;
								     j < FUNC8(cur_rrset) && 
										FUNC0(FUNC9(cur_sig_rr),FUNC9(cur_rr)) != 0;
								     j++) {
									cur_rr = FUNC7(cur_rrset, j);
									
								}
								if (FUNC0(FUNC9(cur_sig_rr), 
												   FUNC9(cur_rr)))
									{
										break;
									}
							}
							
					}
					/* option 1 */
					if (data_chain->parent) {
						FUNC4(
						    new_tree,
						    data_chain,
						    cur_sig_rr,
						    check_time);
					}

					/* option 2 */
					FUNC1(
					    new_tree,
					    data_chain,
					    cur_rr,
					    cur_sig_rr,
					    check_time);
				}
					
				FUNC2(
						new_tree, data_chain, 
						cur_rr, check_time);
			} else {
				/* no signatures? maybe it's nsec data */
					
				/* just add every rr from parent as new parent */
				FUNC3(
					new_tree, data_chain, check_time);
			}
		}
	}

	return new_tree;
}