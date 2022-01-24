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
typedef  size_t u_int ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int NID_X9_62_prime256v1 ; 
 int NID_secp384r1 ; 
 int NID_secp521r1 ; 
 int /*<<< orphan*/  OPENSSL_EC_NAMED_CURVE ; 

int
FUNC9(EC_KEY *k)
{
	EC_GROUP *eg;
	int nids[] = {
		NID_X9_62_prime256v1,
		NID_secp384r1,
#  ifdef OPENSSL_HAS_NISTP521
		NID_secp521r1,
#  endif /* OPENSSL_HAS_NISTP521 */
		-1
	};
	int nid;
	u_int i;
	BN_CTX *bnctx;
	const EC_GROUP *g = FUNC7(k);

	/*
	 * The group may be stored in a ASN.1 encoded private key in one of two
	 * ways: as a "named group", which is reconstituted by ASN.1 object ID
	 * or explicit group parameters encoded into the key blob. Only the
	 * "named group" case sets the group NID for us, but we can figure
	 * it out for the other case by comparing against all the groups that
	 * are supported.
	 */
	if ((nid = FUNC4(g)) > 0)
		return nid;
	if ((bnctx = FUNC1()) == NULL)
		return -1;
	for (i = 0; nids[i] != -1; i++) {
		if ((eg = FUNC5(nids[i])) == NULL) {
			FUNC0(bnctx);
			return -1;
		}
		if (FUNC2(g, eg, bnctx) == 0)
			break;
		FUNC3(eg);
	}
	FUNC0(bnctx);
	if (nids[i] != -1) {
		/* Use the group with the NID attached */
		FUNC6(eg, OPENSSL_EC_NAMED_CURVE);
		if (FUNC8(k, eg) != 1) {
			FUNC3(eg);
			return -1;
		}
	}
	return nids[i];
}