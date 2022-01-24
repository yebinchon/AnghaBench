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
struct hostapd_data {struct dpp_authentication* dpp_auth; int /*<<< orphan*/  msg_ctx; } ;
struct dpp_authentication {int peer_version; scalar_t__ conf_resp_status; int waiting_conf_result; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPP_EVENT_CONF_FAILED ; 
 int /*<<< orphan*/  DPP_EVENT_CONF_SENT ; 
 scalar_t__ DPP_STATUS_OK ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct dpp_authentication*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hostapd_dpp_auth_resp_retry_timeout ; 
 int /*<<< orphan*/  hostapd_dpp_config_result_wait_timeout ; 
 int /*<<< orphan*/  hostapd_dpp_reply_wait_timeout ; 
 int /*<<< orphan*/  FUNC3 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

void FUNC6(struct hostapd_data *hapd, int ok)
{
	struct dpp_authentication *auth = hapd->dpp_auth;

	if (!auth)
		return;

	FUNC5(MSG_DEBUG, "DPP: Configuration exchange completed (ok=%d)",
		   ok);
	FUNC1(hostapd_dpp_reply_wait_timeout, hapd, NULL);
	FUNC1(hostapd_dpp_auth_resp_retry_timeout, hapd, NULL);
#ifdef CONFIG_DPP2
	if (ok && auth->peer_version >= 2 &&
	    auth->conf_resp_status == DPP_STATUS_OK) {
		wpa_printf(MSG_DEBUG, "DPP: Wait for Configuration Result");
		auth->waiting_conf_result = 1;
		eloop_cancel_timeout(hostapd_dpp_config_result_wait_timeout,
				     hapd, NULL);
		eloop_register_timeout(2, 0,
				       hostapd_dpp_config_result_wait_timeout,
				       hapd, NULL);
		return;
	}
#endif /* CONFIG_DPP2 */
	FUNC3(hapd);

	if (ok)
		FUNC4(hapd->msg_ctx, MSG_INFO, DPP_EVENT_CONF_SENT);
	else
		FUNC4(hapd->msg_ctx, MSG_INFO, DPP_EVENT_CONF_FAILED);
	FUNC0(hapd->dpp_auth);
	hapd->dpp_auth = NULL;
}