#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wpa_driver_scan_params {int* freqs; } ;
struct hostapd_iface {int /*<<< orphan*/ * bss; TYPE_2__* conf; scalar_t__ acs_num_completed_scans; int /*<<< orphan*/  scan_cb; TYPE_1__* current_mode; } ;
struct hostapd_channel_data {int flag; int /*<<< orphan*/  freq; } ;
typedef  int /*<<< orphan*/  params ;
struct TYPE_4__ {int /*<<< orphan*/  acs_num_scans; } ;
struct TYPE_3__ {int num_channels; struct hostapd_channel_data* channels; } ;

/* Variables and functions */
 int HOSTAPD_CHAN_DISABLED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_iface*) ; 
 int /*<<< orphan*/  acs_scan_complete ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct wpa_driver_scan_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_iface*,struct hostapd_channel_data*) ; 
 int* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_driver_scan_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC7(struct hostapd_iface *iface)
{
	struct wpa_driver_scan_params params;
	struct hostapd_channel_data *chan;
	int i, *freq;

	FUNC5(&params, 0, sizeof(params));
	params.freqs = FUNC3(iface->current_mode->num_channels + 1,
				 sizeof(params.freqs[0]));
	if (params.freqs == NULL)
		return -1;

	freq = params.freqs;
	for (i = 0; i < iface->current_mode->num_channels; i++) {
		chan = &iface->current_mode->channels[i];
		if (chan->flag & HOSTAPD_CHAN_DISABLED)
			continue;

		if (!FUNC2(iface, chan))
			continue;

		*freq++ = chan->freq;
	}
	*freq = 0;

	iface->scan_cb = acs_scan_complete;

	FUNC6(MSG_DEBUG, "ACS: Scanning %d / %d",
		   iface->acs_num_completed_scans + 1,
		   iface->conf->acs_num_scans);

	if (FUNC1(iface->bss[0], &params) < 0) {
		FUNC6(MSG_ERROR, "ACS: Failed to request initial scan");
		FUNC0(iface);
		FUNC4(params.freqs);
		return -1;
	}

	FUNC4(params.freqs);
	return 0;
}