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
struct wpa_supplicant {int drv_flags; scalar_t__ action_tx_wait_time_used; scalar_t__ roc_waiting_drv_freq; scalar_t__ off_channel_freq; scalar_t__ action_tx_wait_time; int /*<<< orphan*/ * pending_action_tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WPA_DRIVER_FLAGS_OFFCHANNEL_TX ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct wpa_supplicant *wpa_s)
{
	FUNC2(MSG_DEBUG,
		   "Off-channel: Action frame sequence done notification: pending_action_tx=%p drv_offchan_tx=%d action_tx_wait_time=%d off_channel_freq=%d roc_waiting_drv_freq=%d",
		   wpa_s->pending_action_tx,
		   !!(wpa_s->drv_flags & WPA_DRIVER_FLAGS_OFFCHANNEL_TX),
		   wpa_s->action_tx_wait_time, wpa_s->off_channel_freq,
		   wpa_s->roc_waiting_drv_freq);
	FUNC3(wpa_s->pending_action_tx);
	wpa_s->pending_action_tx = NULL;
	if (wpa_s->drv_flags & WPA_DRIVER_FLAGS_OFFCHANNEL_TX &&
	    (wpa_s->action_tx_wait_time || wpa_s->action_tx_wait_time_used))
		FUNC1(wpa_s);
	else if (wpa_s->off_channel_freq || wpa_s->roc_waiting_drv_freq) {
		FUNC0(wpa_s);
		wpa_s->off_channel_freq = 0;
		wpa_s->roc_waiting_drv_freq = 0;
	}
	wpa_s->action_tx_wait_time_used = 0;
}