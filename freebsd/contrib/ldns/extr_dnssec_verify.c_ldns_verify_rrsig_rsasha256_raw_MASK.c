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
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_buffer ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  LDNS_STATUS_CRYPTO_UNKNOWN_ALGO ; 
 int /*<<< orphan*/  LDNS_STATUS_SSL_ERR ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

ldns_status
FUNC6(unsigned char* sig,
						  size_t siglen,
						  ldns_buffer* rrset,
						  unsigned char* key,
						  size_t keylen)
{
#ifdef USE_SHA2
	EVP_PKEY *evp_key;
	ldns_status result;

	evp_key = EVP_PKEY_new();
	if (EVP_PKEY_assign_RSA(evp_key, ldns_key_buf2rsa_raw(key, keylen))) {
		result = ldns_verify_rrsig_evp_raw(sig,
								siglen,
								rrset,
								evp_key,
								EVP_sha256());
	} else {
		result = LDNS_STATUS_SSL_ERR;
	}
	EVP_PKEY_free(evp_key);

	return result;
#else
	/* touch these to prevent compiler warnings */
	(void) sig;
	(void) siglen;
	(void) rrset;
	(void) key;
	(void) keylen;
	return LDNS_STATUS_CRYPTO_UNKNOWN_ALGO;
#endif
}