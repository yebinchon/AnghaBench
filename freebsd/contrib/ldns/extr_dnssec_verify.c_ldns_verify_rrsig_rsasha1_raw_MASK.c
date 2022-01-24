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
 int /*<<< orphan*/  LDNS_STATUS_SSL_ERR ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

ldns_status
FUNC6(unsigned char* sig, size_t siglen,
						ldns_buffer* rrset, unsigned char* key, size_t keylen)
{
	EVP_PKEY *evp_key;
	ldns_status result;

	evp_key = FUNC2();
	if (FUNC0(evp_key, FUNC4(key, keylen))) {
		result = FUNC5(sig,
								siglen,
								rrset,
								evp_key,
								FUNC3());
	} else {
		result = LDNS_STATUS_SSL_ERR;
	}
	FUNC1(evp_key);

	return result;
}