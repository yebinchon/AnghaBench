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
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 scalar_t__ LDNS_STATUS_CRYPTO_TYPE_COVERED_ERR ; 
 scalar_t__ LDNS_STATUS_MEM_ERR ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static ldns_status
FUNC11(ldns_buffer* rawsig_buf, ldns_buffer* verify_buf, 
	ldns_rr_list* rrset_clone, const ldns_rr* rrsig)
{
	ldns_status result;

	/* canonicalize the sig */
	FUNC0(FUNC6(rrsig));
	
	/* check if the typecovered is equal to the type checked */
	if (FUNC1(FUNC7(rrsig)) !=
	    FUNC2(FUNC4(rrset_clone, 0)))
		return LDNS_STATUS_CRYPTO_TYPE_COVERED_ERR;
	
	/* create a buffer with b64 signature rdata */
	result = FUNC10(rawsig_buf, rrsig);
	if(result != LDNS_STATUS_OK)
		return result;

	/* use TTL from signature. Use wildcard names for wildcards */
	/* also canonicalizes rrset_clone */
	FUNC8(rrset_clone, rrsig);

	/* sort the rrset in canonical order  */
	FUNC5(rrset_clone);

	/* put the signature rr (without the b64) to the verify_buf */
	if (FUNC9(verify_buf, rrsig) != LDNS_STATUS_OK)
		return LDNS_STATUS_MEM_ERR;

	/* add the rrset in verify_buf */
	if(FUNC3(verify_buf, rrset_clone) 
		!= LDNS_STATUS_OK)
		return LDNS_STATUS_MEM_ERR;

	return LDNS_STATUS_OK;
}