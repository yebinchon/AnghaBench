#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
struct TYPE_11__ {size_t parent_count; TYPE_1__** parents; } ;
typedef  TYPE_2__ ldns_dnssec_trust_tree ;
struct TYPE_12__ {TYPE_7__* parent; int /*<<< orphan*/  rrset; } ;
typedef  TYPE_3__ ldns_dnssec_data_chain ;
struct TYPE_13__ {int /*<<< orphan*/ * rrset; } ;
struct TYPE_10__ {int /*<<< orphan*/ * rr; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_DNSKEY ; 
 scalar_t__ LDNS_RR_TYPE_NSEC ; 
 scalar_t__ LDNS_RR_TYPE_NSEC3 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC16(
		ldns_dnssec_trust_tree *new_tree, 
		ldns_dnssec_data_chain *data_chain, 
		ldns_rr *cur_sig_rr,
		time_t check_time)
{
	size_t i, j;
	ldns_rr_list *cur_rrset = FUNC7(data_chain->rrset); 
	ldns_dnssec_trust_tree *cur_parent_tree;
	ldns_rr *cur_parent_rr;
	uint16_t cur_keytag;
	ldns_rr_list *tmp_rrset = NULL;
	ldns_status cur_status;

	cur_keytag = FUNC5(FUNC14(cur_sig_rr));
	
	for (j = 0; j < FUNC11(data_chain->parent->rrset); j++) {
		cur_parent_rr = FUNC10(data_chain->parent->rrset, j);
		if (FUNC6(cur_parent_rr) == LDNS_RR_TYPE_DNSKEY) {
			if (FUNC1(cur_parent_rr) == cur_keytag) {

				/* TODO: check wildcard nsec too */
				if (cur_rrset && FUNC11(cur_rrset) > 0) {
					tmp_rrset = cur_rrset;
					if (FUNC6(FUNC10(cur_rrset, 0))
					    == LDNS_RR_TYPE_NSEC ||
					    FUNC6(FUNC10(cur_rrset, 0))
					    == LDNS_RR_TYPE_NSEC3) {
						/* might contain different names! 
						   sort and split */
						FUNC12(cur_rrset);
						FUNC0(tmp_rrset == cur_rrset);
						tmp_rrset = FUNC9(cur_rrset);
						
						/* with nsecs, this might be the wrong one */
						while (tmp_rrset &&
						       FUNC11(cur_rrset) > 0 &&
						       FUNC2(
								FUNC13(FUNC10(
										        tmp_rrset, 0)),
								FUNC13(cur_sig_rr)) != 0) {
							FUNC8(tmp_rrset);
							tmp_rrset =
								FUNC9(cur_rrset);
						}
					}
					cur_status = FUNC15(
							tmp_rrset, 
							cur_sig_rr, 
							cur_parent_rr,
							check_time);
					if (tmp_rrset && tmp_rrset != cur_rrset
							) {
						FUNC8(
								tmp_rrset);
						tmp_rrset = NULL;
					}
					/* avoid dupes */
					for (i = 0; i < new_tree->parent_count; i++) {
						if (cur_parent_rr == new_tree->parents[i]->rr) {
							goto done;
						}
					}

					cur_parent_tree =
						FUNC3(
								data_chain->parent,
						                cur_parent_rr,
								check_time);
					(void)FUNC4(new_tree,
					           cur_parent_tree,
					           cur_sig_rr,
					           cur_status);
				}
			}
		}
	}
 done:
	FUNC8(cur_rrset);
}