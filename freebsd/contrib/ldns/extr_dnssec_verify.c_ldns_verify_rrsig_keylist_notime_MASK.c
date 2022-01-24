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
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  const ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_MAX_PACKETLEN ; 
 scalar_t__ LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY ; 
 scalar_t__ LDNS_STATUS_ERR ; 
 scalar_t__ LDNS_STATUS_MEM_ERR ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

ldns_status
FUNC12(const ldns_rr_list *rrset,
					 const ldns_rr *rrsig,
					 const ldns_rr_list *keys, 
					 ldns_rr_list *good_keys)
{
	ldns_buffer *rawsig_buf;
	ldns_buffer *verify_buf;
	uint16_t i;
	ldns_status result, status;
	ldns_rr_list *rrset_clone;
	ldns_rr_list *validkeys;

	if (!rrset) {
		return LDNS_STATUS_ERR;
	}

	validkeys = FUNC7();
	if (!validkeys) {
		return LDNS_STATUS_MEM_ERR;
	}
	
	/* clone the rrset so that we can fiddle with it */
	rrset_clone = FUNC4(rrset);

	/* create the buffers which will certainly hold the raw data */
	rawsig_buf = FUNC1(LDNS_MAX_PACKETLEN);
	verify_buf  = FUNC1(LDNS_MAX_PACKETLEN);

	result = FUNC2(rawsig_buf, verify_buf, 
		rrset_clone, rrsig);
	if(result != LDNS_STATUS_OK) {
		FUNC0(verify_buf);
		FUNC0(rawsig_buf);
		FUNC5(rrset_clone);
		FUNC6(validkeys);
		return result;
	}

	result = LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY;
	for(i = 0; i < FUNC10(keys); i++) {
		status = FUNC11(rawsig_buf, verify_buf, 
			rrsig, FUNC9(keys, i));
		if (status == LDNS_STATUS_OK) {
			/* one of the keys has matched, don't break
			 * here, instead put the 'winning' key in
			 * the validkey list and return the list 
			 * later */
			if (!FUNC8(validkeys, 
				FUNC9(keys,i))) {
				/* couldn't push the key?? */
				FUNC0(rawsig_buf);
				FUNC0(verify_buf);
				FUNC5(rrset_clone);
				FUNC6(validkeys);
				return LDNS_STATUS_MEM_ERR;
			}

			result = status;
		}

		if (result == LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY) {
			result = status;
		}
	}

	/* no longer needed */
	FUNC5(rrset_clone);
	FUNC0(rawsig_buf);
	FUNC0(verify_buf);

	if (FUNC10(validkeys) == 0) {
		/* no keys were added, return last error */
		FUNC6(validkeys); 
		return result;
	}

	/* do not check timestamps */

	FUNC3(good_keys, validkeys);
	FUNC6(validkeys);
	return LDNS_STATUS_OK;
}