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
struct os_reltime {int sec; int usec; } ;
struct hostapd_data {int dpp_resp_wait_time; int dpp_in_response_listen; TYPE_1__* iface; struct dpp_authentication* dpp_auth; int /*<<< orphan*/  msg_ctx; int /*<<< orphan*/  dpp_last_init; } ;
struct dpp_authentication {unsigned int curr_freq; unsigned int neg_freq; scalar_t__ auth_req_ack; int /*<<< orphan*/  waiting_auth_resp; } ;
struct TYPE_2__ {unsigned int freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPP_EVENT_AUTH_INIT_FAILED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct dpp_authentication*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,void (*) (void*,void*),struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct os_reltime*) ; 
 int /*<<< orphan*/  FUNC6 (struct os_reltime*,int /*<<< orphan*/ *,struct os_reltime*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC9(void *eloop_ctx, void *timeout_ctx)
{
	struct hostapd_data *hapd = eloop_ctx;
	struct dpp_authentication *auth = hapd->dpp_auth;
	unsigned int freq;
	struct os_reltime now, diff;
	unsigned int wait_time, diff_ms;

	if (!auth || !auth->waiting_auth_resp)
		return;

	wait_time = hapd->dpp_resp_wait_time ?
		hapd->dpp_resp_wait_time : 2000;
	FUNC5(&now);
	FUNC6(&now, &hapd->dpp_last_init, &diff);
	diff_ms = diff.sec * 1000 + diff.usec / 1000;
	FUNC8(MSG_DEBUG,
		   "DPP: Reply wait timeout - wait_time=%u diff_ms=%u",
		   wait_time, diff_ms);

	if (auth->auth_req_ack && diff_ms >= wait_time) {
		/* Peer ACK'ed Authentication Request frame, but did not reply
		 * with Authentication Response frame within two seconds. */
		FUNC8(MSG_INFO,
			   "DPP: No response received from responder - stopping initiation attempt");
		FUNC7(hapd->msg_ctx, MSG_INFO, DPP_EVENT_AUTH_INIT_FAILED);
		FUNC4(hapd);
		FUNC3(hapd);
		FUNC0(auth);
		hapd->dpp_auth = NULL;
		return;
	}

	if (diff_ms >= wait_time) {
		/* Authentication Request frame was not ACK'ed and no reply
		 * was receiving within two seconds. */
		FUNC8(MSG_DEBUG,
			   "DPP: Continue Initiator channel iteration");
		FUNC4(hapd);
		FUNC3(hapd);
		FUNC2(hapd);
		return;
	}

	/* Driver did not support 2000 ms long wait_time with TX command, so
	 * schedule listen operation to continue waiting for the response.
	 *
	 * DPP listen operations continue until stopped, so simply schedule a
	 * new call to this function at the point when the two second reply
	 * wait has expired. */
	wait_time -= diff_ms;

	freq = auth->curr_freq;
	if (auth->neg_freq > 0)
		freq = auth->neg_freq;
	FUNC8(MSG_DEBUG,
		   "DPP: Continue reply wait on channel %u MHz for %u ms",
		   freq, wait_time);
	hapd->dpp_in_response_listen = 1;

	if (freq != (unsigned int) hapd->iface->freq && hapd->iface->freq > 0) {
		/* TODO: Listen operation on non-operating channel */
		FUNC8(MSG_INFO,
			   "DPP: Listen operation on non-operating channel (%d MHz) is not yet supported (operating channel: %d MHz)",
			   freq, hapd->iface->freq);
	}

	FUNC1(wait_time / 1000, (wait_time % 1000) * 1000,
			       hostapd_dpp_reply_wait_timeout, hapd, NULL);
}