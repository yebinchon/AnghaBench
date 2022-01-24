#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hostapd_iface {TYPE_1__* conf; struct hostapd_hw_modes* current_mode; } ;
struct hostapd_hw_modes {int num_channels; struct hostapd_channel_data* channels; } ;
struct hostapd_channel_data {int chan; } ;
struct TYPE_4__ {int channel; int secondary_channel; int /*<<< orphan*/  ieee80211n; scalar_t__ ieee80211ax; scalar_t__ ieee80211ac; } ;

/* Variables and functions */
#define  CHANWIDTH_160MHZ 131 
#define  CHANWIDTH_80MHZ 130 
#define  CHANWIDTH_80P80MHZ 129 
#define  CHANWIDTH_USE_HT 128 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC4(struct hostapd_iface *iface, int *seg1_start)
{
	struct hostapd_hw_modes *mode;
	struct hostapd_channel_data *chan;
	int channel_no = iface->conf->channel;
	int res = -1, i;
	int chan_seg1 = -1;

	*seg1_start = -1;

	/* HT40- */
	if (iface->conf->ieee80211n && iface->conf->secondary_channel == -1)
		channel_no -= 4;

	/* VHT/HE */
	if (iface->conf->ieee80211ac || iface->conf->ieee80211ax) {
		switch (FUNC2(iface->conf)) {
		case CHANWIDTH_USE_HT:
			break;
		case CHANWIDTH_80MHZ:
			channel_no = FUNC0(
				iface->conf) - 6;
			break;
		case CHANWIDTH_160MHZ:
			channel_no = FUNC0(
				iface->conf) - 14;
			break;
		case CHANWIDTH_80P80MHZ:
			channel_no = FUNC0(
				iface->conf) - 6;
			chan_seg1 = FUNC1(
				iface->conf) - 6;
			break;
		default:
			FUNC3(MSG_INFO,
				   "DFS only VHT20/40/80/160/80+80 is supported now");
			channel_no = -1;
			break;
		}
	}

	/* Get idx */
	mode = iface->current_mode;
	for (i = 0; i < mode->num_channels; i++) {
		chan = &mode->channels[i];
		if (chan->chan == channel_no) {
			res = i;
			break;
		}
	}

	if (res != -1 && chan_seg1 > -1) {
		int found = 0;

		/* Get idx for seg1 */
		mode = iface->current_mode;
		for (i = 0; i < mode->num_channels; i++) {
			chan = &mode->channels[i];
			if (chan->chan == chan_seg1) {
				*seg1_start = i;
				found = 1;
				break;
			}
		}
		if (!found)
			res = -1;
	}

	if (res == -1) {
		FUNC3(MSG_DEBUG,
			   "DFS chan_idx seems wrong; num-ch: %d ch-no: %d conf-ch-no: %d 11n: %d sec-ch: %d vht-oper-width: %d",
			   mode->num_channels, channel_no, iface->conf->channel,
			   iface->conf->ieee80211n,
			   iface->conf->secondary_channel,
			   FUNC2(iface->conf));

		for (i = 0; i < mode->num_channels; i++) {
			FUNC3(MSG_DEBUG, "Available channel: %d",
				   mode->channels[i].chan);
		}
	}

	return res;
}