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
struct wpabuf {int dummy; } ;
struct dpp_bootstrap_info {int /*<<< orphan*/  pubkey_hash; int /*<<< orphan*/  pubkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  SHA256_MAC_LEN ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC6 (struct wpabuf*) ; 
 size_t FUNC7 (struct wpabuf*) ; 

int FUNC8(struct dpp_bootstrap_info *bi)
{
	struct wpabuf *der;
	int res;
	const u8 *addr[1];
	size_t len[1];

	der = FUNC0(bi->pubkey);
	if (!der)
		return -1;
	FUNC3(MSG_DEBUG, "DPP: Compressed public key (DER)",
			der);

	addr[0] = FUNC6(der);
	len[0] = FUNC7(der);
	res = FUNC1(1, addr, len, bi->pubkey_hash);
	if (res < 0)
		FUNC4(MSG_DEBUG, "DPP: Failed to hash public key");
	else
		FUNC2(MSG_DEBUG, "DPP: Public key hash", bi->pubkey_hash,
			    SHA256_MAC_LEN);
	FUNC5(der);
	return res;
}