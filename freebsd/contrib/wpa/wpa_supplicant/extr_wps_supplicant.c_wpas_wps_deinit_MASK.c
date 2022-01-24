#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wpa_supplicant {TYPE_2__* wps; int /*<<< orphan*/ * wps_er; } ;
struct TYPE_4__ {int /*<<< orphan*/  vendor_ext_m1; } ;
struct TYPE_5__ {struct TYPE_5__* network_key; TYPE_1__ dev; int /*<<< orphan*/  dh_privkey; int /*<<< orphan*/  dh_pubkey; int /*<<< orphan*/  registrar; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wpas_p2p_pbc_overlap_cb ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  wpas_wps_clear_timeout ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  wpas_wps_reenable_networks_cb ; 
 int /*<<< orphan*/  wpas_wps_timeout ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct wpa_supplicant *wpa_s)
{
	FUNC3(wpa_s);
	FUNC0(wpas_wps_timeout, wpa_s, NULL);
	FUNC0(wpas_wps_clear_timeout, wpa_s, NULL);
	FUNC0(wpas_wps_reenable_networks_cb, wpa_s, NULL);
	FUNC4(wpa_s);

#ifdef CONFIG_P2P
	eloop_cancel_timeout(wpas_p2p_pbc_overlap_cb, wpa_s, NULL);
#endif /* CONFIG_P2P */

	if (wpa_s->wps == NULL)
		return;

#ifdef CONFIG_WPS_ER
	wps_er_deinit(wpa_s->wps_er, NULL, NULL);
	wpa_s->wps_er = NULL;
	wpas_wps_nfc_clear(wpa_s->wps);
#endif /* CONFIG_WPS_ER */

	FUNC7(wpa_s->wps->registrar);
	FUNC2(wpa_s->wps->dh_pubkey);
	FUNC2(wpa_s->wps->dh_privkey);
	FUNC2(wpa_s->wps->dev.vendor_ext_m1);
	FUNC1(wpa_s->wps->network_key);
	FUNC1(wpa_s->wps);
	wpa_s->wps = NULL;
}