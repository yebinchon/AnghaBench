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
struct wpas_dpp_listen_work {scalar_t__ freq; } ;
struct wpa_supplicant {scalar_t__ roc_waiting_drv_freq; scalar_t__ off_channel_freq; scalar_t__ dpp_pending_listen_freq; scalar_t__ dpp_listen_freq; int /*<<< orphan*/  max_remain_on_chan; struct wpa_radio_work* dpp_listen_work; } ;
struct wpa_radio_work {scalar_t__ started; struct wpas_dpp_listen_work* ctx; struct wpa_supplicant* wpa_s; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (struct wpa_supplicant*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpas_dpp_listen_work*) ; 

__attribute__((used)) static void FUNC5(struct wpa_radio_work *work, int deinit)
{
	struct wpa_supplicant *wpa_s = work->wpa_s;
	struct wpas_dpp_listen_work *lwork = work->ctx;

	if (deinit) {
		if (work->started) {
			wpa_s->dpp_listen_work = NULL;
			FUNC2(wpa_s);
		}
		FUNC4(lwork);
		return;
	}

	wpa_s->dpp_listen_work = work;

	wpa_s->dpp_pending_listen_freq = lwork->freq;

	if (FUNC0(wpa_s, lwork->freq,
				      wpa_s->max_remain_on_chan) < 0) {
		FUNC1(MSG_DEBUG,
			   "DPP: Failed to request the driver to remain on channel (%u MHz) for listen",
			   lwork->freq);
		wpa_s->dpp_listen_freq = 0;
		FUNC3(wpa_s);
		wpa_s->dpp_pending_listen_freq = 0;
		return;
	}
	wpa_s->off_channel_freq = 0;
	wpa_s->roc_waiting_drv_freq = lwork->freq;
}