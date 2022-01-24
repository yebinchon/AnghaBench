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
struct wpa_supplicant {struct wpa_radio_work* p2p_send_action_work; } ;
struct wpa_radio_work {scalar_t__ started; struct send_action_work* ctx; struct wpa_supplicant* wpa_s; } ;
struct send_action_work {int /*<<< orphan*/  wait_time; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; int /*<<< orphan*/  bssid; int /*<<< orphan*/  src; int /*<<< orphan*/  dst; int /*<<< orphan*/  freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC3 (struct send_action_work*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_radio_work*) ; 
 int /*<<< orphan*/  wpas_p2p_send_action_tx_status ; 
 int /*<<< orphan*/  wpas_p2p_send_action_work_timeout ; 

__attribute__((used)) static void FUNC5(struct wpa_radio_work *work, int deinit)
{
	struct wpa_supplicant *wpa_s = work->wpa_s;
	struct send_action_work *awork = work->ctx;

	if (deinit) {
		if (work->started) {
			FUNC0(wpas_p2p_send_action_work_timeout,
					     wpa_s, NULL);
			wpa_s->p2p_send_action_work = NULL;
			FUNC2(wpa_s);
		}
		FUNC3(awork);
		return;
	}

	if (FUNC1(wpa_s, awork->freq, awork->dst, awork->src,
				   awork->bssid, awork->buf, awork->len,
				   awork->wait_time,
				   wpas_p2p_send_action_tx_status, 1) < 0) {
		FUNC3(awork);
		FUNC4(work);
		return;
	}
	wpa_s->p2p_send_action_work = work;
}