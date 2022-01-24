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
typedef  long double u32 ;
struct hostapd_iface {TYPE_1__* current_mode; TYPE_2__* conf; } ;
struct hostapd_channel_data {long double chan; long double interference_factor; long double freq; } ;
struct acs_bias {scalar_t__ channel; long double bias; } ;
struct TYPE_4__ {int secondary_channel; unsigned int num_acs_chan_bias; struct acs_bias* acs_chan_bias; scalar_t__ ieee80211ax; scalar_t__ ieee80211ac; scalar_t__ ieee80211n; } ;
struct TYPE_3__ {int num_channels; scalar_t__ mode; struct hostapd_channel_data* channels; } ;

/* Variables and functions */
 long double ACS_24GHZ_PREFER_1_6_11 ; 
 long double ACS_ADJ_WEIGHT ; 
 long double ACS_NEXT_ADJ_WEIGHT ; 
#define  CHANWIDTH_160MHZ 129 
#define  CHANWIDTH_80MHZ 128 
 scalar_t__ HOSTAPD_MODE_IEEE80211A ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 struct hostapd_channel_data* FUNC0 (struct hostapd_iface*,long double) ; 
 scalar_t__ FUNC1 (struct hostapd_channel_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_channel_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct hostapd_channel_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct hostapd_channel_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct hostapd_channel_data*,long double,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hostapd_channel_data*) ; 
 int const FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct hostapd_iface*,struct hostapd_channel_data*) ; 
 long double FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static struct hostapd_channel_data *
FUNC13(struct hostapd_iface *iface)
{
	struct hostapd_channel_data *chan, *adj_chan, *ideal_chan = NULL,
		*rand_chan = NULL;
	long double factor, ideal_factor = 0;
	int i, j;
	int n_chans = 1;
	u32 bw;
	unsigned int k;

	/* TODO: HT40- support */

	if (iface->conf->ieee80211n &&
	    iface->conf->secondary_channel == -1) {
		FUNC12(MSG_ERROR, "ACS: HT40- is not supported yet. Please try HT40+");
		return NULL;
	}

	if (iface->conf->ieee80211n &&
	    iface->conf->secondary_channel)
		n_chans = 2;

	if (iface->conf->ieee80211ac || iface->conf->ieee80211ax) {
		switch (FUNC7(iface->conf)) {
		case CHANWIDTH_80MHZ:
			n_chans = 4;
			break;
		case CHANWIDTH_160MHZ:
			n_chans = 8;
			break;
		}
	}

	bw = FUNC11(n_chans);

	/* TODO: VHT/HE80+80. Update acs_adjust_center_freq() too. */

	FUNC12(MSG_DEBUG,
		   "ACS: Survey analysis for selected bandwidth %d MHz", bw);

	for (i = 0; i < iface->current_mode->num_channels; i++) {
		double total_weight;
		struct acs_bias *bias, tmp_bias;

		chan = &iface->current_mode->channels[i];

		/* Since in the current ACS implementation the first channel is
		 * always a primary channel, skip channels not available as
		 * primary until more sophisticated channel selection is
		 * implemented. */
		if (!FUNC6(chan))
			continue;

		if (!FUNC10(iface, chan))
			continue;

		if (!FUNC5(chan, bw, 1, 1)) {
			FUNC12(MSG_DEBUG,
				   "ACS: Channel %d: BW %u is not supported",
				   chan->chan, bw);
			continue;
		}

		/* HT40 on 5 GHz has a limited set of primary channels as per
		 * 11n Annex J */
		if (iface->current_mode->mode == HOSTAPD_MODE_IEEE80211A &&
		    iface->conf->ieee80211n &&
		    iface->conf->secondary_channel &&
		    !FUNC2(chan)) {
			FUNC12(MSG_DEBUG, "ACS: Channel %d: not allowed as primary channel for HT40",
				   chan->chan);
			continue;
		}

		if (iface->current_mode->mode == HOSTAPD_MODE_IEEE80211A &&
		    (iface->conf->ieee80211ac || iface->conf->ieee80211ax)) {
			if (FUNC7(iface->conf) ==
			    CHANWIDTH_80MHZ &&
			    !FUNC4(chan)) {
				FUNC12(MSG_DEBUG,
					   "ACS: Channel %d: not allowed as primary channel for VHT80",
					   chan->chan);
				continue;
			}

			if (FUNC7(iface->conf) ==
			    CHANWIDTH_160MHZ &&
			    !FUNC3(chan)) {
				FUNC12(MSG_DEBUG,
					   "ACS: Channel %d: not allowed as primary channel for VHT160",
					   chan->chan);
				continue;
			}
		}

		factor = 0;
		if (FUNC1(chan))
			factor = chan->interference_factor;
		total_weight = 1;

		for (j = 1; j < n_chans; j++) {
			adj_chan = FUNC0(iface, chan->freq + (j * 20));
			if (!adj_chan)
				break;

			if (!FUNC5(adj_chan, bw, 1, 0)) {
				FUNC12(MSG_DEBUG,
					   "ACS: PRI Channel %d: secondary channel %d BW %u is not supported",
					   chan->chan, adj_chan->chan, bw);
				break;
			}

			if (FUNC1(adj_chan)) {
				factor += adj_chan->interference_factor;
				total_weight += 1;
			}
		}

		if (j != n_chans) {
			FUNC12(MSG_DEBUG, "ACS: Channel %d: not enough bandwidth",
				   chan->chan);
			continue;
		}

		/* 2.4 GHz has overlapping 20 MHz channels. Include adjacent
		 * channel interference factor. */
		if (FUNC8(iface->current_mode->mode)) {
			for (j = 0; j < n_chans; j++) {
				adj_chan = FUNC0(iface, chan->freq +
							 (j * 20) - 5);
				if (adj_chan && FUNC1(adj_chan)) {
					factor += ACS_ADJ_WEIGHT *
						adj_chan->interference_factor;
					total_weight += ACS_ADJ_WEIGHT;
				}

				adj_chan = FUNC0(iface, chan->freq +
							 (j * 20) - 10);
				if (adj_chan && FUNC1(adj_chan)) {
					factor += ACS_NEXT_ADJ_WEIGHT *
						adj_chan->interference_factor;
					total_weight += ACS_NEXT_ADJ_WEIGHT;
				}

				adj_chan = FUNC0(iface, chan->freq +
							 (j * 20) + 5);
				if (adj_chan && FUNC1(adj_chan)) {
					factor += ACS_ADJ_WEIGHT *
						adj_chan->interference_factor;
					total_weight += ACS_ADJ_WEIGHT;
				}

				adj_chan = FUNC0(iface, chan->freq +
							 (j * 20) + 10);
				if (adj_chan && FUNC1(adj_chan)) {
					factor += ACS_NEXT_ADJ_WEIGHT *
						adj_chan->interference_factor;
					total_weight += ACS_NEXT_ADJ_WEIGHT;
				}
			}
		}

		factor /= total_weight;

		bias = NULL;
		if (iface->conf->acs_chan_bias) {
			for (k = 0; k < iface->conf->num_acs_chan_bias; k++) {
				bias = &iface->conf->acs_chan_bias[k];
				if (bias->channel == chan->chan)
					break;
				bias = NULL;
			}
		} else if (FUNC8(iface->current_mode->mode) &&
			   FUNC9(chan->chan)) {
			tmp_bias.channel = chan->chan;
			tmp_bias.bias = ACS_24GHZ_PREFER_1_6_11;
			bias = &tmp_bias;
		}

		if (bias) {
			factor *= bias->bias;
			FUNC12(MSG_DEBUG,
				   "ACS:  * channel %d: total interference = %Lg (%f bias)",
				   chan->chan, factor, bias->bias);
		} else {
			FUNC12(MSG_DEBUG,
				   "ACS:  * channel %d: total interference = %Lg",
				   chan->chan, factor);
		}

		if (FUNC1(chan) &&
		    (!ideal_chan || factor < ideal_factor)) {
			ideal_factor = factor;
			ideal_chan = chan;
		}

		/* This channel would at least be usable */
		if (!rand_chan)
			rand_chan = chan;
	}

	if (ideal_chan) {
		FUNC12(MSG_DEBUG, "ACS: Ideal channel is %d (%d MHz) with total interference factor of %Lg",
			   ideal_chan->chan, ideal_chan->freq, ideal_factor);
		return ideal_chan;
	}

	return rand_chan;
}