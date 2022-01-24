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
typedef  int /*<<< orphan*/  u8 ;
struct dpp_curve_params {int dummy; } ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,size_t) ; 
 struct dpp_curve_params* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static EVP_PKEY * FUNC11(const struct dpp_curve_params **curve,
				  const u8 *privkey, size_t privkey_len)
{
	EVP_PKEY *pkey;
	EC_KEY *eckey;
	const EC_GROUP *group;
	int nid;

	pkey = FUNC7();
	if (!pkey)
		return NULL;
	eckey = FUNC8(NULL, &privkey, privkey_len);
	if (!eckey) {
		FUNC10(MSG_INFO,
			   "DPP: OpenSSL: d2i_ECPrivateKey() failed: %s",
			   FUNC3(FUNC4(), NULL));
		FUNC6(pkey);
		return NULL;
	}
	group = FUNC2(eckey);
	if (!group) {
		FUNC1(eckey);
		FUNC6(pkey);
		return NULL;
	}
	nid = FUNC0(group);
	*curve = FUNC9(nid);
	if (!*curve) {
		FUNC10(MSG_INFO,
			   "DPP: Unsupported curve (nid=%d) in pre-assigned key",
			   nid);
		FUNC1(eckey);
		FUNC6(pkey);
		return NULL;
	}

	if (FUNC5(pkey, eckey) != 1) {
		FUNC1(eckey);
		FUNC6(pkey);
		return NULL;
	}
	return pkey;
}