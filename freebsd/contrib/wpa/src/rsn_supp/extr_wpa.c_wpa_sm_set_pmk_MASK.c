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
struct wpa_sm {size_t pmk_len; size_t xxkey_len; int /*<<< orphan*/  key_mgmt; int /*<<< orphan*/  network_ctx; int /*<<< orphan*/  own_addr; int /*<<< orphan*/  pmksa; int /*<<< orphan*/  xxkey; int /*<<< orphan*/  pmk; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 

void FUNC3(struct wpa_sm *sm, const u8 *pmk, size_t pmk_len,
		    const u8 *pmkid, const u8 *bssid)
{
	if (sm == NULL)
		return;

	FUNC2(MSG_DEBUG, "WPA: Set PMK based on external data",
			pmk, pmk_len);
	sm->pmk_len = pmk_len;
	FUNC0(sm->pmk, pmk, pmk_len);

#ifdef CONFIG_IEEE80211R
	/* Set XXKey to be PSK for FT key derivation */
	sm->xxkey_len = pmk_len;
	os_memcpy(sm->xxkey, pmk, pmk_len);
#endif /* CONFIG_IEEE80211R */

	if (bssid) {
		FUNC1(sm->pmksa, pmk, pmk_len, pmkid, NULL, 0,
				bssid, sm->own_addr,
				sm->network_ctx, sm->key_mgmt, NULL);
	}
}