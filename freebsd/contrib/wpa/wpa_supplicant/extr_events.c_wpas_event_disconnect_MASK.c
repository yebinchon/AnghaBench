#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct wpa_supplicant {int key_mgmt; int /*<<< orphan*/  eap_expected_failure; int /*<<< orphan*/  eapol; scalar_t__ own_disconnect_req; TYPE_1__* ap_iface; } ;
struct TYPE_2__ {int /*<<< orphan*/ * bss; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ WLAN_REASON_IEEE_802_1X_AUTH_FAILED ; 
 int WPA_KEY_MGMT_IEEE8021X_NO_WPA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*,char*) ; 
 scalar_t__ FUNC7 (struct wpa_supplicant*,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/  const*,size_t,int) ; 

__attribute__((used)) static void FUNC8(struct wpa_supplicant *wpa_s, const u8 *addr,
				  u16 reason_code, int locally_generated,
				  const u8 *ie, size_t ie_len, int deauth)
{
#ifdef CONFIG_AP
	if (wpa_s->ap_iface && addr) {
		hostapd_notif_disassoc(wpa_s->ap_iface->bss[0], addr);
		return;
	}

	if (wpa_s->ap_iface) {
		wpa_dbg(wpa_s, MSG_DEBUG, "Ignore deauth event in AP mode");
		return;
	}
#endif /* CONFIG_AP */

	if (!locally_generated)
		wpa_s->own_disconnect_req = 0;

	FUNC4(wpa_s, reason_code, locally_generated);

	if (((reason_code == WLAN_REASON_IEEE_802_1X_AUTH_FAILED ||
	      ((FUNC3(wpa_s->key_mgmt) ||
		(wpa_s->key_mgmt & WPA_KEY_MGMT_IEEE8021X_NO_WPA)) &&
	       FUNC0(wpa_s->eapol))) &&
	     !wpa_s->eap_expected_failure))
		FUNC6(wpa_s, "AUTH_FAILED");

#ifdef CONFIG_P2P
	if (deauth && reason_code > 0) {
		if (wpas_p2p_deauth_notif(wpa_s, addr, reason_code, ie, ie_len,
					  locally_generated) > 0) {
			/*
			 * The interface was removed, so cannot continue
			 * processing any additional operations after this.
			 */
			return;
		}
	}
#endif /* CONFIG_P2P */

	FUNC5(wpa_s, reason_code,
					     locally_generated);
}