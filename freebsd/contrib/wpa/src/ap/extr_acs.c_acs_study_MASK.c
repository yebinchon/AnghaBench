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
struct hostapd_iface {TYPE_1__* conf; } ;
struct hostapd_channel_data {int /*<<< orphan*/  chan; } ;
struct TYPE_2__ {scalar_t__ ieee80211ax; scalar_t__ ieee80211ac; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 scalar_t__ HOSTAPD_CHAN_VALID ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_iface*) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_iface*) ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_iface*) ; 
 struct hostapd_channel_data* FUNC3 (struct hostapd_iface*) ; 
 int FUNC4 (struct hostapd_iface*) ; 
 scalar_t__ FUNC5 (struct hostapd_iface*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC7(struct hostapd_iface *iface)
{
	struct hostapd_channel_data *ideal_chan;
	int err;

	err = FUNC4(iface);
	if (err < 0) {
		FUNC6(MSG_ERROR, "ACS: All study options have failed");
		goto fail;
	}

	ideal_chan = FUNC3(iface);
	if (!ideal_chan) {
		FUNC6(MSG_ERROR, "ACS: Failed to compute ideal channel");
		err = -1;
		goto fail;
	}

	iface->conf->channel = ideal_chan->chan;

	if (iface->conf->ieee80211ac || iface->conf->ieee80211ax)
		FUNC0(iface);

	err = 0;
fail:
	/*
	 * hostapd_setup_interface_complete() will return -1 on failure,
	 * 0 on success and 0 is HOSTAPD_CHAN_VALID :)
	 */
	if (FUNC5(iface, err) == HOSTAPD_CHAN_VALID) {
		FUNC1(iface);
		return;
	}

	/* This can possibly happen if channel parameters (secondary
	 * channel, center frequencies) are misconfigured */
	FUNC6(MSG_ERROR, "ACS: Possibly channel configuration is invalid, please report this along with your config file.");
	FUNC2(iface);
}