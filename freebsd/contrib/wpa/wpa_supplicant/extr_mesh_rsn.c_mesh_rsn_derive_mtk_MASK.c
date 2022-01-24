#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpa_supplicant {TYPE_1__* mesh_rsn; int /*<<< orphan*/ * own_addr; } ;
struct sta_info {int /*<<< orphan*/  mtk_len; int /*<<< orphan*/  mtk; TYPE_2__* sae; int /*<<< orphan*/  my_lid; int /*<<< orphan*/  peer_lid; int /*<<< orphan*/ * my_nonce; int /*<<< orphan*/ * peer_nonce; int /*<<< orphan*/ * addr; } ;
typedef  int /*<<< orphan*/  context ;
struct TYPE_4__ {int /*<<< orphan*/  pmk; } ;
struct TYPE_3__ {int /*<<< orphan*/  pairwise_cipher; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  RSN_AUTH_KEY_MGMT_SAE ; 
 scalar_t__ RSN_SELECTOR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SAE_PMK_LEN ; 
 int WPA_NONCE_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct wpa_supplicant *wpa_s, struct sta_info *sta)
{
	u8 *ptr;
	u8 *min, *max;
	u8 *myaddr = wpa_s->own_addr;
	u8 *peer = sta->addr;
	u8 context[2 * WPA_NONCE_LEN + 2 * 2 + RSN_SELECTOR_LEN + 2 * ETH_ALEN];

	/*
	 * MTK = KDF-Hash-Length(PMK, "Temporal Key Derivation", min(localNonce,
	 *  peerNonce) || max(localNonce, peerNonce) || min(localLinkID,
	 *  peerLinkID) || max(localLinkID, peerLinkID) || Selected AKM Suite ||
	 *  min(localMAC, peerMAC) || max(localMAC, peerMAC))
	 */
	ptr = context;
	if (FUNC2(sta->my_nonce, sta->peer_nonce, WPA_NONCE_LEN) < 0) {
		min = sta->my_nonce;
		max = sta->peer_nonce;
	} else {
		min = sta->peer_nonce;
		max = sta->my_nonce;
	}
	FUNC3(ptr, min, WPA_NONCE_LEN);
	ptr += WPA_NONCE_LEN;
	FUNC3(ptr, max, WPA_NONCE_LEN);
	ptr += WPA_NONCE_LEN;

	if (sta->my_lid < sta->peer_lid) {
		FUNC1(ptr, sta->my_lid);
		ptr += 2;
		FUNC1(ptr, sta->peer_lid);
		ptr += 2;
	} else {
		FUNC1(ptr, sta->peer_lid);
		ptr += 2;
		FUNC1(ptr, sta->my_lid);
		ptr += 2;
	}

	/* Selected AKM Suite: SAE */
	FUNC0(ptr, RSN_AUTH_KEY_MGMT_SAE);
	ptr += RSN_SELECTOR_LEN;

	if (FUNC2(myaddr, peer, ETH_ALEN) < 0) {
		min = myaddr;
		max = peer;
	} else {
		min = peer;
		max = myaddr;
	}
	FUNC3(ptr, min, ETH_ALEN);
	ptr += ETH_ALEN;
	FUNC3(ptr, max, ETH_ALEN);

	sta->mtk_len = FUNC5(wpa_s->mesh_rsn->pairwise_cipher);
	FUNC4(sta->sae->pmk, SAE_PMK_LEN,
		   "Temporal Key Derivation", context, sizeof(context),
		   sta->mtk, sta->mtk_len);
	return 0;
}