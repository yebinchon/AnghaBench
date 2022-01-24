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
struct wps_data {int /*<<< orphan*/ * emsk; int /*<<< orphan*/ * keywrapkey; int /*<<< orphan*/ * authkey; int /*<<< orphan*/ * nonce_r; int /*<<< orphan*/ * mac_addr_e; int /*<<< orphan*/ * nonce_e; struct wpabuf* dh_privkey; int /*<<< orphan*/ * dh_ctx; struct wpabuf* dh_pubkey_r; struct wpabuf* dh_pubkey_e; scalar_t__ registrar; } ;
struct wpabuf {int dummy; } ;
typedef  int /*<<< orphan*/  keys ;
typedef  int /*<<< orphan*/  kdk ;
typedef  int /*<<< orphan*/  dhkey ;

/* Variables and functions */
 size_t ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int SHA256_MAC_LEN ; 
 int WPS_AUTHKEY_LEN ; 
 int WPS_EMSK_LEN ; 
 int WPS_KEYWRAPKEY_LEN ; 
 size_t WPS_NONCE_LEN ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ *,struct wpabuf*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC10 (struct wpabuf*) ; 
 size_t FUNC11 (struct wpabuf*) ; 
 struct wpabuf* FUNC12 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 

int FUNC14(struct wps_data *wps)
{
	struct wpabuf *pubkey, *dh_shared;
	u8 dhkey[SHA256_MAC_LEN], kdk[SHA256_MAC_LEN];
	const u8 *addr[3];
	size_t len[3];
	u8 keys[WPS_AUTHKEY_LEN + WPS_KEYWRAPKEY_LEN + WPS_EMSK_LEN];

	if (wps->dh_privkey == NULL) {
		FUNC8(MSG_DEBUG, "WPS: Own DH private key not available");
		return -1;
	}

	pubkey = wps->registrar ? wps->dh_pubkey_e : wps->dh_pubkey_r;
	if (pubkey == NULL) {
		FUNC8(MSG_DEBUG, "WPS: Peer DH public key not available");
		return -1;
	}

	FUNC6(MSG_DEBUG, "WPS: DH Private Key", wps->dh_privkey);
	FUNC5(MSG_DEBUG, "WPS: DH peer Public Key", pubkey);
	dh_shared = FUNC0(wps->dh_ctx, pubkey, wps->dh_privkey);
	FUNC1(wps->dh_ctx);
	wps->dh_ctx = NULL;
	dh_shared = FUNC12(dh_shared, 192);
	if (dh_shared == NULL) {
		FUNC8(MSG_DEBUG, "WPS: Failed to derive DH shared key");
		return -1;
	}

	/* Own DH private key is not needed anymore */
	FUNC9(wps->dh_privkey);
	wps->dh_privkey = NULL;

	FUNC6(MSG_DEBUG, "WPS: DH shared key", dh_shared);

	/* DHKey = SHA-256(g^AB mod p) */
	addr[0] = FUNC10(dh_shared);
	len[0] = FUNC11(dh_shared);
	FUNC4(1, addr, len, dhkey);
	FUNC7(MSG_DEBUG, "WPS: DHKey", dhkey, sizeof(dhkey));
	FUNC9(dh_shared);

	/* KDK = HMAC-SHA-256_DHKey(N1 || EnrolleeMAC || N2) */
	addr[0] = wps->nonce_e;
	len[0] = WPS_NONCE_LEN;
	addr[1] = wps->mac_addr_e;
	len[1] = ETH_ALEN;
	addr[2] = wps->nonce_r;
	len[2] = WPS_NONCE_LEN;
	FUNC2(dhkey, sizeof(dhkey), 3, addr, len, kdk);
	FUNC7(MSG_DEBUG, "WPS: KDK", kdk, sizeof(kdk));

	FUNC13(kdk, NULL, 0, "Wi-Fi Easy and Secure Key Derivation",
		keys, sizeof(keys));
	FUNC3(wps->authkey, keys, WPS_AUTHKEY_LEN);
	FUNC3(wps->keywrapkey, keys + WPS_AUTHKEY_LEN, WPS_KEYWRAPKEY_LEN);
	FUNC3(wps->emsk, keys + WPS_AUTHKEY_LEN + WPS_KEYWRAPKEY_LEN,
		  WPS_EMSK_LEN);

	FUNC7(MSG_DEBUG, "WPS: AuthKey",
			wps->authkey, WPS_AUTHKEY_LEN);
	FUNC7(MSG_DEBUG, "WPS: KeyWrapKey",
			wps->keywrapkey, WPS_KEYWRAPKEY_LEN);
	FUNC7(MSG_DEBUG, "WPS: EMSK", wps->emsk, WPS_EMSK_LEN);

	return 0;
}