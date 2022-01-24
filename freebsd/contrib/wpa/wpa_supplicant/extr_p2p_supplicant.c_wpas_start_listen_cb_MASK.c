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
struct wpas_p2p_listen_work {unsigned int duration; scalar_t__ freq; int /*<<< orphan*/  probe_resp_ie; } ;
struct wpa_supplicant {unsigned int pending_listen_duration; scalar_t__ roc_waiting_drv_freq; scalar_t__ off_channel_freq; scalar_t__ pending_listen_freq; scalar_t__ extra_roc_dur; struct wpa_radio_work* p2p_listen_work; } ;
struct wpa_radio_work {scalar_t__ started; struct wpas_p2p_listen_work* ctx; struct wpa_supplicant* wpa_s; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (struct wpa_supplicant*,int) ; 
 scalar_t__ FUNC1 (struct wpa_supplicant*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpas_p2p_listen_work*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*) ; 

__attribute__((used)) static void FUNC7(struct wpa_radio_work *work, int deinit)
{
	struct wpa_supplicant *wpa_s = work->wpa_s;
	struct wpas_p2p_listen_work *lwork = work->ctx;
	unsigned int duration;

	if (deinit) {
		if (work->started) {
			wpa_s->p2p_listen_work = NULL;
			FUNC6(wpa_s);
		}
		FUNC5(lwork);
		return;
	}

	wpa_s->p2p_listen_work = work;

	FUNC2(wpa_s, NULL, lwork->probe_resp_ie, NULL);

	if (FUNC0(wpa_s, 1) < 0) {
		FUNC3(MSG_DEBUG, "P2P: Failed to request the driver to "
			   "report received Probe Request frames");
		FUNC4(wpa_s);
		return;
	}

	wpa_s->pending_listen_freq = lwork->freq;
	wpa_s->pending_listen_duration = lwork->duration;

	duration = lwork->duration;
#ifdef CONFIG_TESTING_OPTIONS
	if (wpa_s->extra_roc_dur) {
		wpa_printf(MSG_DEBUG, "TESTING: Increase ROC duration %u -> %u",
			   duration, duration + wpa_s->extra_roc_dur);
		duration += wpa_s->extra_roc_dur;
	}
#endif /* CONFIG_TESTING_OPTIONS */

	if (FUNC1(wpa_s, lwork->freq, duration) < 0) {
		FUNC3(MSG_DEBUG, "P2P: Failed to request the driver "
			   "to remain on channel (%u MHz) for Listen "
			   "state", lwork->freq);
		FUNC4(wpa_s);
		wpa_s->pending_listen_freq = 0;
		return;
	}
	wpa_s->off_channel_freq = 0;
	wpa_s->roc_waiting_drv_freq = lwork->freq;
}