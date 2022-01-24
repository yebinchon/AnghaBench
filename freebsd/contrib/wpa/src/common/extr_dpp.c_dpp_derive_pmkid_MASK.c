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
typedef  int /*<<< orphan*/  const u8 ;
struct wpabuf {int dummy; } ;
struct dpp_curve_params {int dummy; } ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int PMKID_LEN ; 
 int SHA256_MAC_LEN ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int FUNC3 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 int /*<<< orphan*/  const* FUNC6 (struct wpabuf*) ; 
 int FUNC7 (struct wpabuf*) ; 

__attribute__((used)) static int FUNC8(const struct dpp_curve_params *curve,
			    EVP_PKEY *own_key, EVP_PKEY *peer_key, u8 *pmkid)
{
	struct wpabuf *nkx, *pkx;
	int ret = -1, res;
	const u8 *addr[2];
	size_t len[2];
	u8 hash[SHA256_MAC_LEN];

	/* PMKID = Truncate-128(H(min(NK.x, PK.x) | max(NK.x, PK.x))) */
	nkx = FUNC0(own_key, 0);
	pkx = FUNC0(peer_key, 0);
	if (!nkx || !pkx)
		goto fail;
	addr[0] = FUNC6(nkx);
	len[0] = FUNC7(nkx) / 2;
	addr[1] = FUNC6(pkx);
	len[1] = FUNC7(pkx) / 2;
	if (len[0] != len[1])
		goto fail;
	if (FUNC1(addr[0], addr[1], len[0]) > 0) {
		addr[0] = FUNC6(pkx);
		addr[1] = FUNC6(nkx);
	}
	FUNC4(MSG_DEBUG, "DPP: PMKID hash payload 1", addr[0], len[0]);
	FUNC4(MSG_DEBUG, "DPP: PMKID hash payload 2", addr[1], len[1]);
	res = FUNC3(2, addr, len, hash);
	if (res < 0)
		goto fail;
	FUNC4(MSG_DEBUG, "DPP: PMKID hash output", hash, SHA256_MAC_LEN);
	FUNC2(pmkid, hash, PMKID_LEN);
	FUNC4(MSG_DEBUG, "DPP: PMKID", pmkid, PMKID_LEN);
	ret = 0;
fail:
	FUNC5(nkx);
	FUNC5(pkx);
	return ret;
}