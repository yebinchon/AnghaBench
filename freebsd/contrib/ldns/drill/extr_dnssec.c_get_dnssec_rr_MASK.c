#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  scalar_t__ ldns_pkt_type ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 scalar_t__ LDNS_PACKET_ANSWER ; 
 scalar_t__ LDNS_PACKET_NODATA ; 
 scalar_t__ LDNS_PACKET_NXDOMAIN ; 
 scalar_t__ LDNS_PACKET_UNKNOWN ; 
 scalar_t__ LDNS_RR_TYPE_RRSIG ; 
 int /*<<< orphan*/  LDNS_SECTION_ANSWER ; 
 int /*<<< orphan*/  LDNS_SECTION_AUTHORITY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

ldns_pkt_type
FUNC11(ldns_pkt *p, ldns_rdf *name, ldns_rr_type t, 
	ldns_rr_list **rrlist, ldns_rr_list **sig)
{
	ldns_pkt_type pt = LDNS_PACKET_UNKNOWN;
	ldns_rr_list *sigs = NULL;
	size_t i;

	if (!p) {
		if (rrlist) {
			*rrlist = NULL;
		}
		return LDNS_PACKET_UNKNOWN;
	}

	pt = FUNC0(p);
	if (name) {
		if (rrlist) {
			*rrlist = FUNC1(p, name, t,
					LDNS_SECTION_ANSWER);
			if (!*rrlist) {
				*rrlist = FUNC1(
						p, name, t,
						LDNS_SECTION_AUTHORITY);
			}
		}
		if (sig) {
			sigs = FUNC1(p, name,
					LDNS_RR_TYPE_RRSIG, 
					LDNS_SECTION_ANSWER);
			if (!sigs) {
				sigs = FUNC1(
						p, name, LDNS_RR_TYPE_RRSIG,
						LDNS_SECTION_AUTHORITY);
			}
		}
	} else {
		/* A DS-referral - get the DS records if they are there */
		if (rrlist) {
			*rrlist = FUNC2(
					p, t, LDNS_SECTION_AUTHORITY);
		}
		if (sig) {
			sigs = FUNC2(p,
					LDNS_RR_TYPE_RRSIG,
					LDNS_SECTION_AUTHORITY);
		}
	}
	if (sig) {
		*sig = FUNC6();
		for (i = 0; i < FUNC9(sigs); i++) {
			/* only add the sigs that cover this type */
			if (t == FUNC3(FUNC10(
						FUNC8(sigs, i)))) {

				FUNC7(*sig,
						FUNC4(
							FUNC8(
								sigs, i)));
			}
		}
	}
	FUNC5(sigs);

	if (pt == LDNS_PACKET_NXDOMAIN || pt == LDNS_PACKET_NODATA) {
		return pt;
	} else {
		return LDNS_PACKET_ANSWER;
	}
}