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
struct hostapd_hw_modes {scalar_t__ mode; } ;
struct hostapd_channel_data {int flag; int allowed_bw; } ;

/* Variables and functions */
 size_t FUNC0 (int*) ; 
 int HOSTAPD_CHAN_DISABLED ; 
 int HOSTAPD_CHAN_WIDTH_40M ; 
 int HOSTAPD_CHAN_WIDTH_40P ; 
 scalar_t__ HOSTAPD_MODE_IEEE80211A ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ FUNC1 (struct hostapd_channel_data*) ; 
 struct hostapd_channel_data* FUNC2 (struct hostapd_hw_modes*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 

int FUNC4(struct hostapd_hw_modes *mode, int pri_chan,
			      int sec_chan)
{
	int ok, first;
	int allowed[] = { 36, 44, 52, 60, 100, 108, 116, 124, 132, 140,
			  149, 157, 165, 184, 192 };
	size_t k;
	struct hostapd_channel_data *p_chan, *s_chan;
	const int ht40_plus = pri_chan < sec_chan;

	p_chan = FUNC2(mode, pri_chan, NULL);
	if (!p_chan)
		return 0;

	if (pri_chan == sec_chan || !sec_chan) {
		if (FUNC1(p_chan))
			return 1; /* HT40 not used */

		FUNC3(MSG_ERROR, "Channel %d is not allowed as primary",
			   pri_chan);
		return 0;
	}

	s_chan = FUNC2(mode, sec_chan, NULL);
	if (!s_chan)
		return 0;

	FUNC3(MSG_DEBUG,
		   "HT40: control channel: %d  secondary channel: %d",
		   pri_chan, sec_chan);

	/* Verify that HT40 secondary channel is an allowed 20 MHz
	 * channel */
	if ((s_chan->flag & HOSTAPD_CHAN_DISABLED) ||
	    (ht40_plus && !(p_chan->allowed_bw & HOSTAPD_CHAN_WIDTH_40P)) ||
	    (!ht40_plus && !(p_chan->allowed_bw & HOSTAPD_CHAN_WIDTH_40M))) {
		FUNC3(MSG_ERROR, "HT40 secondary channel %d not allowed",
			   sec_chan);
		return 0;
	}

	/*
	 * Verify that HT40 primary,secondary channel pair is allowed per
	 * IEEE 802.11n Annex J. This is only needed for 5 GHz band since
	 * 2.4 GHz rules allow all cases where the secondary channel fits into
	 * the list of allowed channels (already checked above).
	 */
	if (mode->mode != HOSTAPD_MODE_IEEE80211A)
		return 1;

	first = pri_chan < sec_chan ? pri_chan : sec_chan;

	ok = 0;
	for (k = 0; k < FUNC0(allowed); k++) {
		if (first == allowed[k]) {
			ok = 1;
			break;
		}
	}
	if (!ok) {
		FUNC3(MSG_ERROR, "HT40 channel pair (%d, %d) not allowed",
			   pri_chan, sec_chan);
		return 0;
	}

	return 1;
}