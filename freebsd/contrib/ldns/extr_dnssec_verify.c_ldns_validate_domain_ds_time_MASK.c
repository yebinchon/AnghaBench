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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RD ; 
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_DS ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_RRSIG ; 
 int /*<<< orphan*/  LDNS_SECTION_ANSWER ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

ldns_rr_list *
FUNC10(
		const ldns_resolver *res, 
		const ldns_rdf * domain,
		const ldns_rr_list * keys,
		time_t check_time)
{
	ldns_pkt * dspkt;
	uint16_t key_i;
	ldns_rr_list * rrset = NULL;
	ldns_rr_list * sigs = NULL;
	ldns_rr_list * trusted_keys = NULL;

	/* Fetch DS for the domain */
	dspkt = FUNC2(res, domain,
		LDNS_RR_TYPE_DS, LDNS_RR_CLASS_IN, LDNS_RD);
	if (dspkt) {
		rrset = FUNC1(dspkt,
								   LDNS_RR_TYPE_DS,
								   LDNS_SECTION_ANSWER);
		sigs = FUNC1(dspkt,
								  LDNS_RR_TYPE_RRSIG,
								  LDNS_SECTION_ANSWER);

		/* Validate sigs */
		if (FUNC9(rrset, sigs, keys, check_time, NULL)
			       	== LDNS_STATUS_OK) {
			trusted_keys = FUNC5();
			for (key_i=0; key_i<FUNC8(rrset); key_i++) {
				FUNC6(trusted_keys,
								 FUNC3(FUNC7(rrset,
														 key_i)
											)
								 );
			}
		}

		FUNC4(rrset);
		FUNC4(sigs);
		FUNC0(dspkt);

	} else {
		/* LDNS_STATUS_CRYPTO_NO_DS */
	}

	return trusted_keys;
}