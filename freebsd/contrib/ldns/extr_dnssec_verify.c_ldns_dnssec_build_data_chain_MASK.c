#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ ldns_rr_type ;
typedef  int /*<<< orphan*/  const ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr_class ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  const ldns_pkt ;
struct TYPE_8__ {int packet_nodata; int /*<<< orphan*/  rrset; void* packet_qtype; int /*<<< orphan*/  packet_rcode; struct TYPE_8__* parent; } ;
typedef  TYPE_1__ ldns_dnssec_data_chain ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_DNSKEY ; 
 scalar_t__ LDNS_RR_TYPE_NSEC ; 
 scalar_t__ LDNS_RR_TYPE_NSEC3 ; 
 int /*<<< orphan*/  LDNS_SECTION_ANY_NOQUESTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  const* FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  const* FUNC6 (int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC11 (int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 void* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *,int) ; 

ldns_dnssec_data_chain *
FUNC23(ldns_resolver *res,
					    uint16_t qflags,
					    const ldns_rr_list *rrset,
					    const ldns_pkt *pkt,
					    ldns_rr *orig_rr)
{
	ldns_rr_list *signatures = NULL;
	ldns_rr_list *dss = NULL;
	
	ldns_rr_list *my_rrset;

	ldns_pkt *my_pkt;

	ldns_rdf *name = NULL, *key_name = NULL;
	ldns_rr_type type = 0;
	ldns_rr_class c = 0;

	bool other_rrset = false;

	ldns_dnssec_data_chain *new_chain = FUNC4();

	FUNC0(pkt != NULL);

	if (!FUNC7(pkt)) {
		/* hmm. no dnssec data in the packet. go up to try and deny
		 * DS? */
		return new_chain;
	}

	if (orig_rr) {
		new_chain->rrset = FUNC17();
		FUNC18(new_chain->rrset, orig_rr);
		new_chain->parent = FUNC23(res,
											    qflags,
											    rrset,
											    pkt,
											    NULL);
		new_chain->packet_rcode = FUNC10(pkt);
		new_chain->packet_qtype = FUNC14(orig_rr);
		if (FUNC8(pkt) == 0) {
			new_chain->packet_nodata = true;
		}
		return new_chain;
	}
	
	if (!rrset || FUNC20(rrset) < 1) {
		/* hmm, no data, do we have denial? only works if pkt was given,
		   otherwise caller has to do the check himself */
		new_chain->packet_nodata = true;
		if (pkt) {
			my_rrset = FUNC11(pkt,
										 LDNS_RR_TYPE_NSEC,
										 LDNS_SECTION_ANY_NOQUESTION
										 );
			if (my_rrset) {
				if (FUNC20(my_rrset) > 0) {
					type = LDNS_RR_TYPE_NSEC;
					other_rrset = true;
				} else {
					FUNC16(my_rrset);
					my_rrset = NULL;
				}
			} else {
				/* nothing, try nsec3 */
				my_rrset = FUNC11(pkt,
						     LDNS_RR_TYPE_NSEC3,
							LDNS_SECTION_ANY_NOQUESTION);
				if (my_rrset) {
					if (FUNC20(my_rrset) > 0) {
						type = LDNS_RR_TYPE_NSEC3;
						other_rrset = true;
					} else {
						FUNC16(my_rrset);
						my_rrset = NULL;
					}
				} else {
					/* nothing, stop */
					/* try parent zone? for denied insecure? */
					return new_chain;
				}
			}
		} else {
			return new_chain;
		}
	} else {
		my_rrset = (ldns_rr_list *) rrset;
	}
	
	if (my_rrset && FUNC20(my_rrset) > 0) {
		new_chain->rrset = FUNC15(my_rrset);
		name = FUNC21(FUNC19(my_rrset, 0));
		type = FUNC14(FUNC19(my_rrset, 0));
		c = FUNC13(FUNC19(my_rrset, 0));
	}
	
	if (other_rrset) {
		FUNC16(my_rrset);
	}
	
	/* normally there will only be 1 signature 'set'
	   but there can be more than 1 denial (wildcards)
	   so check for NSEC
	*/
	if (type == LDNS_RR_TYPE_NSEC || type == LDNS_RR_TYPE_NSEC3) {
		/* just throw in all signatures, the tree builder must sort
		   this out */
		if (pkt) {
			signatures = FUNC6(pkt, type);
		} else {
			my_pkt = FUNC12(res, name, type, c, qflags);
			if (my_pkt) {
			signatures = FUNC6(pkt, type);
			FUNC9(my_pkt);
			}
		}
	} else {
		if (pkt) {
			signatures =
				FUNC5(pkt,
													name,
													type);
		}
		if (!signatures) {
			my_pkt = FUNC12(res, name, type, c, qflags);
			if (my_pkt) {
			signatures =
				FUNC5(my_pkt,
													name,
													type);
			FUNC9(my_pkt);
			}
		}
	}

	if (signatures && FUNC20(signatures) > 0) {
		key_name = FUNC22(FUNC19(signatures, 0), 7);
	}
	if (!key_name) {
		if (signatures) {
			FUNC16(signatures);
		}
		return FUNC2(res,
		                                              qflags,
		                                              orig_rr,
		                                              rrset,
		                                              new_chain);
	}
	if (type != LDNS_RR_TYPE_DNSKEY) {
		FUNC1(res,
		                                    qflags,
		                                    pkt,
		                                    signatures,
		                                    new_chain,
		                                    key_name,
		                                    c
		                                   );
	} else {
		FUNC3(res,
		                                   qflags,
		                                   new_chain,
		                                   key_name,
		                                   c,
		                                   dss
		                                  );
	}
	if (signatures) {
		FUNC16(signatures);
	}
	return new_chain;
}