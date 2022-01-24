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
struct wpabuf {int dummy; } ;
struct wpa_supplicant {struct dpp_authentication* dpp_auth; } ;
struct dpp_authentication {int peer_version; scalar_t__ conf_resp_status; int waiting_conf_result; struct wpabuf* conf_resp; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPP_EVENT_CONF_FAILED ; 
 int /*<<< orphan*/  DPP_EVENT_CONF_SENT ; 
 scalar_t__ DPP_STATUS_OK ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct dpp_authentication*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 int /*<<< orphan*/  wpas_dpp_auth_resp_retry_timeout ; 
 int /*<<< orphan*/  wpas_dpp_config_result_wait_timeout ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  wpas_dpp_reply_wait_timeout ; 

__attribute__((used)) static void
FUNC8(void *ctx, struct wpabuf *resp, int ok)
{
	struct wpa_supplicant *wpa_s = ctx;
	struct dpp_authentication *auth = wpa_s->dpp_auth;

	if (!auth) {
		FUNC6(resp);
		return;
	}
	if (auth->conf_resp != resp) {
		FUNC5(MSG_DEBUG,
			   "DPP: Ignore GAS status report (ok=%d) for unknown response",
			ok);
		FUNC6(resp);
		return;
	}

	FUNC5(MSG_DEBUG, "DPP: Configuration exchange completed (ok=%d)",
		   ok);
	FUNC1(wpas_dpp_reply_wait_timeout, wpa_s, NULL);
	FUNC1(wpas_dpp_auth_resp_retry_timeout, wpa_s, NULL);
#ifdef CONFIG_DPP2
	if (ok && auth->peer_version >= 2 &&
	    auth->conf_resp_status == DPP_STATUS_OK) {
		wpa_printf(MSG_DEBUG, "DPP: Wait for Configuration Result");
		auth->waiting_conf_result = 1;
		auth->conf_resp = NULL;
		wpabuf_free(resp);
		eloop_cancel_timeout(wpas_dpp_config_result_wait_timeout,
				     wpa_s, NULL);
		eloop_register_timeout(2, 0,
				       wpas_dpp_config_result_wait_timeout,
				       wpa_s, NULL);
		return;
	}
#endif /* CONFIG_DPP2 */
	FUNC3(wpa_s);
	FUNC7(wpa_s);
	if (ok)
		FUNC4(wpa_s, MSG_INFO, DPP_EVENT_CONF_SENT);
	else
		FUNC4(wpa_s, MSG_INFO, DPP_EVENT_CONF_FAILED);
	FUNC0(wpa_s->dpp_auth);
	wpa_s->dpp_auth = NULL;
	FUNC6(resp);
}