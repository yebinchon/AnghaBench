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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  const ldns_rr ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_MAX_PACKETLEN ; 
 int /*<<< orphan*/  LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY ; 
 int /*<<< orphan*/  LDNS_STATUS_CRYPTO_NO_RRSIG ; 
 int /*<<< orphan*/  LDNS_STATUS_ERR ; 
 int /*<<< orphan*/  LDNS_STATUS_MISSING_RDATA_FIELDS_KEY ; 
 int /*<<< orphan*/  LDNS_STATUS_MISSING_RDATA_FIELDS_RRSIG ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static ldns_status
FUNC9(ldns_buffer* rawsig_buf, ldns_buffer* verify_buf, 
	const ldns_rr* rrsig, ldns_rr* key)
{
	uint8_t sig_algo;
       
	if (rrsig == NULL) {
		return LDNS_STATUS_CRYPTO_NO_RRSIG;
	}
	if (FUNC6(rrsig, 1) == NULL) {
		return LDNS_STATUS_MISSING_RDATA_FIELDS_RRSIG;
	}
	sig_algo = FUNC5(FUNC6(rrsig, 1));

	/* before anything, check if the keytags match */
	if (FUNC2(key)
	    ==
	    FUNC4(FUNC7(rrsig))
	    ) {
		ldns_buffer* key_buf = FUNC1(LDNS_MAX_PACKETLEN);
		ldns_status result = LDNS_STATUS_ERR;

		/* put the key-data in a buffer, that's the third rdf, with
		 * the base64 encoded key data */
		if (FUNC6(key, 3) == NULL) {
			FUNC0(key_buf);
			return LDNS_STATUS_MISSING_RDATA_FIELDS_KEY;
		}
		if (FUNC3(key_buf, FUNC6(key, 3))
			       	!= LDNS_STATUS_OK) {
			FUNC0(key_buf); 
			/* returning is bad might screw up
			   good keys later in the list
			   what to do? */
			return LDNS_STATUS_ERR;
		}

		if (FUNC6(key, 2) == NULL) {
			result = LDNS_STATUS_MISSING_RDATA_FIELDS_KEY;
		}
		else if (sig_algo == FUNC5(
					FUNC6(key, 2))) {
			result = FUNC8(rawsig_buf, 
				verify_buf, key_buf, sig_algo);
		} else {
			/* No keys with the corresponding algorithm are found */
			result = LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY;
		}

		FUNC0(key_buf); 
		return result;
	}
	else {
		/* No keys with the corresponding keytag are found */
		return LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY;
	}
}