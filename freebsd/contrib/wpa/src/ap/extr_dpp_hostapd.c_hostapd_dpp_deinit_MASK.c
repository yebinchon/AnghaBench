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
struct hostapd_data {int /*<<< orphan*/ * dpp_configurator_params; int /*<<< orphan*/ * dpp_pkex; int /*<<< orphan*/ * dpp_auth; int /*<<< orphan*/  dpp_init_done; scalar_t__ dpp_ignore_netaccesskey_mismatch; int /*<<< orphan*/ * dpp_groups_override; int /*<<< orphan*/ * dpp_discovery_override; int /*<<< orphan*/ * dpp_config_obj_override; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hostapd_dpp_auth_resp_retry_timeout ; 
 int /*<<< orphan*/  hostapd_dpp_config_result_wait_timeout ; 
 int /*<<< orphan*/  hostapd_dpp_init_timeout ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_data*,char*) ; 
 int /*<<< orphan*/  hostapd_dpp_reply_wait_timeout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct hostapd_data *hapd)
{
#ifdef CONFIG_TESTING_OPTIONS
	os_free(hapd->dpp_config_obj_override);
	hapd->dpp_config_obj_override = NULL;
	os_free(hapd->dpp_discovery_override);
	hapd->dpp_discovery_override = NULL;
	os_free(hapd->dpp_groups_override);
	hapd->dpp_groups_override = NULL;
	hapd->dpp_ignore_netaccesskey_mismatch = 0;
#endif /* CONFIG_TESTING_OPTIONS */
	if (!hapd->dpp_init_done)
		return;
	FUNC1(hostapd_dpp_reply_wait_timeout, hapd, NULL);
	FUNC1(hostapd_dpp_init_timeout, hapd, NULL);
	FUNC1(hostapd_dpp_auth_resp_retry_timeout, hapd, NULL);
#ifdef CONFIG_DPP2
	eloop_cancel_timeout(hostapd_dpp_config_result_wait_timeout, hapd,
			     NULL);
#endif /* CONFIG_DPP2 */
	FUNC0(hapd->dpp_auth);
	hapd->dpp_auth = NULL;
	FUNC2(hapd, "*");
	hapd->dpp_pkex = NULL;
	FUNC3(hapd->dpp_configurator_params);
	hapd->dpp_configurator_params = NULL;
}