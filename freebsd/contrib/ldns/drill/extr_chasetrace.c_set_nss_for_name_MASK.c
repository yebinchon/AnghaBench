#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr_class ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_dnssec_zone ;
struct TYPE_4__ {TYPE_2__* rrs; } ;
typedef  TYPE_1__ ldns_dnssec_rrsets ;
struct TYPE_5__ {int /*<<< orphan*/  rr; struct TYPE_5__* next; } ;
typedef  TYPE_2__ ldns_dnssec_rrs ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_A ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_AAAA ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_NS ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC17(
    ldns_resolver *res, ldns_dnssec_zone *referrals, ldns_rdf *name,
    ldns_resolver *local_res, ldns_rr_class c)
{
	ldns_dnssec_rrsets *nss = NULL;
	ldns_dnssec_rrs *nss_rrs;
	ldns_dnssec_rrsets *as = NULL;
	ldns_dnssec_rrs *as_rrs;
	ldns_rdf *lookup = FUNC5(name);
	ldns_rdf *new_lookup;
	ldns_rdf *addr;
	ldns_rr_list *addrs;

	/* nss will become the rrset of as much of "name" as possible */
	for (;;) {
		nss = FUNC3(
		    referrals, lookup, LDNS_RR_TYPE_NS);
		if (nss != NULL) {
			FUNC6(lookup);
			break;
		}
		new_lookup = FUNC2(lookup);
		FUNC6(lookup);
		lookup = new_lookup;
		if (!lookup) {
			FUNC1("No referrals for name found");
			return false;
		}
	}

	/* remove the old nameserver from the resolver */
	while ((addr = FUNC8(res)))
		FUNC6(addr);

	/* Find and add the address records for the rrset as name-servers */
	for (nss_rrs = nss->rrs; nss_rrs; nss_rrs = nss_rrs->next) {

		if ((as = FUNC3(
		    referrals, FUNC16(nss_rrs->rr, 0), LDNS_RR_TYPE_A)))
			for (as_rrs = as->rrs; as_rrs; as_rrs = as_rrs->next)
				(void) FUNC9(
				    res, FUNC16(as_rrs->rr, 0));

		if ((as = FUNC3(
		    referrals, FUNC16(nss_rrs->rr, 0), LDNS_RR_TYPE_AAAA)))
			for (as_rrs = as->rrs; as_rrs; as_rrs = as_rrs->next)
				(void) FUNC9(
				    res, FUNC16(as_rrs->rr, 0));
	}
	/* Is our resolver equipped with name-servers? Good! We're done */
	if (FUNC7(res) > 0)
		return true;

	/* Lookup addresses with local resolver add add to "referrals" database */
	addrs = FUNC14();
	for (nss_rrs = nss->rrs; nss_rrs; nss_rrs = nss_rrs->next) {
		ldns_rr_list *addrs_by_name =
		    FUNC4(
			local_res, FUNC16(nss_rrs->rr, 0), c, 0);
		FUNC11(addrs, addrs_by_name);
		FUNC13(addrs_by_name);
	}

	if (FUNC15(addrs) == 0)
		FUNC1("Could not find the nameserver ip addr; abort");

	else if (FUNC10(res, addrs) !=
	    LDNS_STATUS_OK)

		FUNC1("Error adding new nameservers");
	else {
		FUNC12(addrs);
		return true;
	}
	FUNC0(referrals, addrs);
	FUNC12(addrs);
	return false;
}