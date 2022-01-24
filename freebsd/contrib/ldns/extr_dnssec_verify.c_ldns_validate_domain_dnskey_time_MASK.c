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
typedef  int /*<<< orphan*/  const ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RD ; 
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_DNSKEY ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_RRSIG ; 
 int /*<<< orphan*/  LDNS_SECTION_ANSWER ; 
 scalar_t__ LDNS_STATUS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

ldns_rr_list *
FUNC14(
		const ldns_resolver * res,
		const ldns_rdf * domain,
		const ldns_rr_list * keys,
		time_t check_time
		)
{
	ldns_pkt * keypkt;
	ldns_rr * cur_key;
	uint16_t key_i; uint16_t key_j; uint16_t key_k;
	uint16_t sig_i; ldns_rr * cur_sig;

	ldns_rr_list * domain_keys = NULL;
	ldns_rr_list * domain_sigs = NULL;
	ldns_rr_list * trusted_keys = NULL;

	/* Fetch keys for the domain */
	keypkt = FUNC4(res, domain,
		LDNS_RR_TYPE_DNSKEY, LDNS_RR_CLASS_IN, LDNS_RD);
	if (keypkt) {
		domain_keys = FUNC2(keypkt,
									    LDNS_RR_TYPE_DNSKEY,
									    LDNS_SECTION_ANSWER);
		domain_sigs = FUNC2(keypkt,
									    LDNS_RR_TYPE_RRSIG,
									    LDNS_SECTION_ANSWER);

		/* Try to validate the record using our keys */
		for (key_i=0; key_i< FUNC11(domain_keys); key_i++) {
      
			cur_key = FUNC10(domain_keys, key_i);
			for (key_j=0; key_j<FUNC11(keys); key_j++) {
				if (FUNC6(FUNC10(keys, key_j),
								   cur_key)) {
          
					/* Current key is trusted -- validate */
					trusted_keys = FUNC8();
          
					for (sig_i=0;
						sig_i<FUNC11(domain_sigs);
						sig_i++) {
						cur_sig = FUNC10(domain_sigs, sig_i);
						/* Avoid non-matching sigs */
						if (FUNC3(
							   FUNC12(cur_sig))
						    == FUNC0(cur_key)) {
							if (FUNC13(
									domain_keys,
									cur_sig,
									cur_key,
									check_time)
							    == LDNS_STATUS_OK) {
                
								/* Push the whole rrset 
								   -- we can't do much more */
								for (key_k=0;
									key_k<FUNC11(
											domain_keys);
									key_k++) {
									FUNC9(
									    trusted_keys,
									    FUNC5(
										   FUNC10(
											  domain_keys,
											  key_k)));
								}
                
								FUNC7(domain_keys);
								FUNC7(domain_sigs);
								FUNC1(keypkt);
								return trusted_keys;
							}
						}
					}
	  
					/* Only push our trusted key */
					FUNC9(trusted_keys,
									 FUNC5(cur_key));
				}
			}
		}

		FUNC7(domain_keys);
		FUNC7(domain_sigs);
		FUNC1(keypkt);

	} else {
		/* LDNS_STATUS_CRYPTO_NO_DNSKEY */
	}
    
	return trusted_keys;
}