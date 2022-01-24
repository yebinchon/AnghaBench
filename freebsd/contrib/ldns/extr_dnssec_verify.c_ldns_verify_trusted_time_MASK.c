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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_resolver ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_STATUS_CRYPTO_NO_RRSIG ; 
 int /*<<< orphan*/  LDNS_STATUS_ERR ; 
 int /*<<< orphan*/  LDNS_STATUS_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

ldns_status
FUNC9(
		ldns_resolver *res, 
		ldns_rr_list *rrset, 
		ldns_rr_list * rrsigs, 
		time_t check_time,
		ldns_rr_list * validating_keys
		)
{
	uint16_t sig_i; uint16_t key_i;
	ldns_rr * cur_sig; ldns_rr * cur_key;
	ldns_rr_list * trusted_keys = NULL;
	ldns_status result = LDNS_STATUS_ERR;

	if (!res || !rrset || !rrsigs) {
		return LDNS_STATUS_ERR;
	}

	if (FUNC6(rrset) < 1) {
		return LDNS_STATUS_ERR;
	}

	if (FUNC6(rrsigs) < 1) {
		return LDNS_STATUS_CRYPTO_NO_RRSIG;
	}
  
	/* Look at each sig */
	for (sig_i=0; sig_i < FUNC6(rrsigs); sig_i++) {

		cur_sig = FUNC5(rrsigs, sig_i);
		/* Get a valid signer key and validate the sig */
		if ((trusted_keys = FUNC0(
					res, 
					FUNC7(cur_sig), 
					FUNC1(res), 
					check_time,
					&result))) {

			for (key_i = 0;
				key_i < FUNC6(trusted_keys);
				key_i++) {
				cur_key = FUNC5(trusted_keys, key_i);

				if ((result = FUNC8(rrset,
								cur_sig, 
								cur_key,
								check_time))
				    == LDNS_STATUS_OK) {
					if (validating_keys) {
						FUNC4(validating_keys,
										 FUNC2(cur_key));
					}
					FUNC3(trusted_keys);
					return LDNS_STATUS_OK;
				} 
			}
		}
	}

	FUNC3(trusted_keys);
	return result;
}