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
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  const ldns_rr_list ;

/* Variables and functions */
 scalar_t__ LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY ; 
 scalar_t__ LDNS_STATUS_CRYPTO_NO_RRSIG ; 
 scalar_t__ LDNS_STATUS_CRYPTO_NO_TRUSTED_DNSKEY ; 
 scalar_t__ LDNS_STATUS_ERR ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

ldns_status
FUNC3(ldns_rr_list *rrset, ldns_rr_list *rrsig,
	const ldns_rr_list *keys, ldns_rr_list *good_keys)
{
	uint16_t i;
	ldns_status verify_result = LDNS_STATUS_ERR;

	if (!rrset || !rrsig || !keys) {
		return LDNS_STATUS_ERR;
	}

	if (FUNC1(rrset) < 1) {
		return LDNS_STATUS_ERR;
	}

	if (FUNC1(rrsig) < 1) {
		return LDNS_STATUS_CRYPTO_NO_RRSIG;
	}

	if (FUNC1(keys) < 1) {
		verify_result = LDNS_STATUS_CRYPTO_NO_TRUSTED_DNSKEY;
	} else {
		for (i = 0; i < FUNC1(rrsig); i++) {
			ldns_status s = FUNC2(rrset,
				FUNC0(rrsig, i), keys, good_keys);

			/* try a little to get more descriptive error */
			if (s == LDNS_STATUS_OK) {
				verify_result = LDNS_STATUS_OK;
			} else if (verify_result == LDNS_STATUS_ERR) {
				verify_result = s;
			} else if (s !=  LDNS_STATUS_ERR && verify_result ==
				LDNS_STATUS_CRYPTO_NO_MATCHING_KEYTAG_DNSKEY) {
				verify_result = s;
			}
		}
	}
	return verify_result;
}