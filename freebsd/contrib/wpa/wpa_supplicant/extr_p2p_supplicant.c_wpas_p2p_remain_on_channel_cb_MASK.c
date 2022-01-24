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
struct wpa_supplicant {scalar_t__ off_channel_freq; scalar_t__ pending_listen_freq; int /*<<< orphan*/  pending_listen_duration; TYPE_1__* global; int /*<<< orphan*/  roc_waiting_drv_freq; } ;
struct TYPE_2__ {int /*<<< orphan*/ * p2p; scalar_t__ p2p_disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,unsigned int,unsigned int,...) ; 

void FUNC2(struct wpa_supplicant *wpa_s,
				   unsigned int freq, unsigned int duration)
{
	if (wpa_s->global->p2p_disabled || wpa_s->global->p2p == NULL)
		return;
	FUNC1(MSG_DEBUG, "P2P: remain-on-channel callback (off_channel_freq=%u pending_listen_freq=%d roc_waiting_drv_freq=%d freq=%u duration=%u)",
		   wpa_s->off_channel_freq, wpa_s->pending_listen_freq,
		   wpa_s->roc_waiting_drv_freq, freq, duration);
	if (wpa_s->off_channel_freq &&
	    wpa_s->off_channel_freq == wpa_s->pending_listen_freq) {
		FUNC0(wpa_s->global->p2p, wpa_s->pending_listen_freq,
			      wpa_s->pending_listen_duration);
		wpa_s->pending_listen_freq = 0;
	} else {
		FUNC1(MSG_DEBUG, "P2P: Ignore remain-on-channel callback (off_channel_freq=%u pending_listen_freq=%d freq=%u duration=%u)",
			   wpa_s->off_channel_freq, wpa_s->pending_listen_freq,
			   freq, duration);
	}
}