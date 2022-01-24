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
struct wpa_supplicant {int /*<<< orphan*/  p2p_cli_probe; scalar_t__ roc_waiting_drv_freq; scalar_t__ off_channel_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*) ; 

__attribute__((used)) static void FUNC4(void *ctx)
{
	struct wpa_supplicant *wpa_s = ctx;
	if (wpa_s->off_channel_freq || wpa_s->roc_waiting_drv_freq) {
		FUNC0(wpa_s);
		wpa_s->off_channel_freq = 0;
		wpa_s->roc_waiting_drv_freq = 0;
	}
	FUNC2(wpa_s, NULL, NULL, NULL);

	/*
	 * Don't cancel Probe Request RX reporting for a connected P2P Client
	 * handling Probe Request frames.
	 */
	if (!wpa_s->p2p_cli_probe)
		FUNC1(wpa_s, 0);

	FUNC3(wpa_s);
}