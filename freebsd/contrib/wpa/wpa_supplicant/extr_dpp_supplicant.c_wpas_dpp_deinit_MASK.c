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
struct wpa_supplicant {int /*<<< orphan*/ * dpp_configurator_params; int /*<<< orphan*/  dpp_intro_bssid; int /*<<< orphan*/ * dpp_pfs; int /*<<< orphan*/  dpp; scalar_t__ dpp_ignore_netaccesskey_mismatch; int /*<<< orphan*/ * dpp_groups_override; int /*<<< orphan*/ * dpp_discovery_override; int /*<<< orphan*/ * dpp_config_obj_override; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wpas_dpp_auth_resp_retry_timeout ; 
 int /*<<< orphan*/  wpas_dpp_config_result_wait_timeout ; 
 int /*<<< orphan*/  wpas_dpp_init_timeout ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*,char*) ; 
 int /*<<< orphan*/  wpas_dpp_pkex_retry_timeout ; 
 int /*<<< orphan*/  wpas_dpp_reply_wait_timeout ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_supplicant*) ; 

void FUNC9(struct wpa_supplicant *wpa_s)
{
#ifdef CONFIG_TESTING_OPTIONS
	os_free(wpa_s->dpp_config_obj_override);
	wpa_s->dpp_config_obj_override = NULL;
	os_free(wpa_s->dpp_discovery_override);
	wpa_s->dpp_discovery_override = NULL;
	os_free(wpa_s->dpp_groups_override);
	wpa_s->dpp_groups_override = NULL;
	wpa_s->dpp_ignore_netaccesskey_mismatch = 0;
#endif /* CONFIG_TESTING_OPTIONS */
	if (!wpa_s->dpp)
		return;
	FUNC0(wpa_s->dpp);
	FUNC2(wpas_dpp_pkex_retry_timeout, wpa_s, NULL);
	FUNC2(wpas_dpp_reply_wait_timeout, wpa_s, NULL);
	FUNC2(wpas_dpp_init_timeout, wpa_s, NULL);
	FUNC2(wpas_dpp_auth_resp_retry_timeout, wpa_s, NULL);
#ifdef CONFIG_DPP2
	eloop_cancel_timeout(wpas_dpp_config_result_wait_timeout, wpa_s, NULL);
	dpp_pfs_free(wpa_s->dpp_pfs);
	wpa_s->dpp_pfs = NULL;
#endif /* CONFIG_DPP2 */
	FUNC3(wpa_s);
	FUNC6(wpa_s);
	FUNC8(wpa_s);
	FUNC7(wpa_s, "*");
	FUNC5(wpa_s->dpp_intro_bssid, 0, ETH_ALEN);
	FUNC4(wpa_s->dpp_configurator_params);
	wpa_s->dpp_configurator_params = NULL;
}