#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ const u8 ;
struct wpa_driver_ndis_data {int dummy; } ;
typedef  enum wpa_alg { ____Placeholder_wpa_alg } wpa_alg ;
typedef  size_t ULONGLONG ;
struct TYPE_4__ {size_t Length; int KeyIndex; size_t KeyLength; size_t KeyRSC; scalar_t__ const* KeyMaterial; scalar_t__ const* BSSID; } ;
typedef  TYPE_1__ NDIS_802_11_KEY ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  OID_802_11_ADD_KEY ; 
 int WPA_ALG_NONE ; 
 int WPA_ALG_TKIP ; 
 int WPA_ALG_WEP ; 
 scalar_t__ FUNC0 (scalar_t__ const*) ; 
 int FUNC1 (struct wpa_driver_ndis_data*,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__ const*,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__ const*,int,int) ; 
 TYPE_1__* FUNC5 (size_t) ; 
 int FUNC6 (struct wpa_driver_ndis_data*,int,int,int,scalar_t__ const*,size_t) ; 
 scalar_t__ FUNC7 (struct wpa_driver_ndis_data*,scalar_t__ const*) ; 
 int FUNC8 (struct wpa_driver_ndis_data*,int,scalar_t__ const*,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__ const*,size_t) ; 

__attribute__((used)) static int FUNC10(const char *ifname, void *priv,
				   enum wpa_alg alg, const u8 *addr,
				   int key_idx, int set_tx,
				   const u8 *seq, size_t seq_len,
				   const u8 *key, size_t key_len)
{
	struct wpa_driver_ndis_data *drv = priv;
	size_t len, i;
	NDIS_802_11_KEY *nkey;
	int res, pairwise;
	u8 bssid[ETH_ALEN];

	if (addr == NULL || FUNC0(addr)) {
		/* Group Key */
		pairwise = 0;
		if (FUNC7(drv, bssid) < 0)
			FUNC4(bssid, 0xff, ETH_ALEN);
	} else {
		/* Pairwise Key */
		pairwise = 1;
		FUNC3(bssid, addr, ETH_ALEN);
	}

	if (alg == WPA_ALG_NONE || key_len == 0) {
		return FUNC8(drv, key_idx, addr, bssid,
						  pairwise);
	}

	if (alg == WPA_ALG_WEP) {
		return FUNC6(drv, pairwise, key_idx, set_tx,
					       key, key_len);
	}

	len = 12 + 6 + 6 + 8 + key_len;

	nkey = FUNC5(len);
	if (nkey == NULL)
		return -1;

	nkey->Length = len;
	nkey->KeyIndex = key_idx;
	if (set_tx)
		nkey->KeyIndex |= 1 << 31;
	if (pairwise)
		nkey->KeyIndex |= 1 << 30;
	if (seq && seq_len)
		nkey->KeyIndex |= 1 << 29;
	nkey->KeyLength = key_len;
	FUNC3(nkey->BSSID, bssid, ETH_ALEN);
	if (seq && seq_len) {
		for (i = 0; i < seq_len; i++)
			nkey->KeyRSC |= (ULONGLONG) seq[i] << (i * 8);
	}
	if (alg == WPA_ALG_TKIP && key_len == 32) {
		FUNC3(nkey->KeyMaterial, key, 16);
		FUNC3(nkey->KeyMaterial + 16, key + 24, 8);
		FUNC3(nkey->KeyMaterial + 24, key + 16, 8);
	} else {
		FUNC3(nkey->KeyMaterial, key, key_len);
	}

	FUNC9(MSG_MSGDUMP, "NDIS: OID_802_11_ADD_KEY",
			(u8 *) nkey, len);
	res = FUNC1(drv, OID_802_11_ADD_KEY, (char *) nkey, len);
	FUNC2(nkey);

	return res;
}