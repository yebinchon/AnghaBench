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
struct wps_data {int /*<<< orphan*/ * dh_pubkey_r; int /*<<< orphan*/  config_error; int /*<<< orphan*/  const* peer_pubkey_hash; scalar_t__ peer_pubkey_hash_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  WPS_CFG_PUBLIC_KEY_HASH_MISMATCH ; 
 int WPS_HASH_LEN ; 
 size_t WPS_OOB_PUBKEY_HASH_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct wps_data*) ; 

__attribute__((used)) static int FUNC7(struct wps_data *wps, const u8 *pk,
			      size_t pk_len)
{
	if (pk == NULL || pk_len == 0) {
		FUNC3(MSG_DEBUG, "WPS: No Public Key received");
		return -1;
	}

	if (wps->peer_pubkey_hash_set) {
		u8 hash[WPS_HASH_LEN];
		FUNC1(1, &pk, &pk_len, hash);
		if (FUNC0(hash, wps->peer_pubkey_hash,
				    WPS_OOB_PUBKEY_HASH_LEN) != 0) {
			FUNC3(MSG_ERROR, "WPS: Public Key hash mismatch");
			FUNC2(MSG_DEBUG, "WPS: Received public key",
				    pk, pk_len);
			FUNC2(MSG_DEBUG, "WPS: Calculated public key "
				    "hash", hash, WPS_OOB_PUBKEY_HASH_LEN);
			FUNC2(MSG_DEBUG, "WPS: Expected public key hash",
				    wps->peer_pubkey_hash,
				    WPS_OOB_PUBKEY_HASH_LEN);
			wps->config_error = WPS_CFG_PUBLIC_KEY_HASH_MISMATCH;
			return -1;
		}
	}

	FUNC5(wps->dh_pubkey_r);
	wps->dh_pubkey_r = FUNC4(pk, pk_len);
	if (wps->dh_pubkey_r == NULL)
		return -1;

	if (FUNC6(wps) < 0)
		return -1;

	return 0;
}