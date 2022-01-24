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
typedef  scalar_t__ u8 ;
struct hostapd_iface {struct hostapd_hw_modes* current_mode; } ;
struct hostapd_hw_modes {struct hostapd_channel_data* channels; } ;
struct hostapd_channel_data {int flag; scalar_t__ chan; } ;

/* Variables and functions */
#define  CHAN_WIDTH_160 132 
#define  CHAN_WIDTH_20 131 
#define  CHAN_WIDTH_20_NOHT 130 
#define  CHAN_WIDTH_40 129 
#define  CHAN_WIDTH_80 128 
 int HOSTAPD_CHAN_RADAR ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_iface*,int,int) ; 
 int FUNC1 (struct hostapd_iface*,int*) ; 
 int FUNC2 (struct hostapd_iface*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static int FUNC5(struct hostapd_iface *iface, int freq,
				       int chan_width, int cf1, int cf2)
{
	int start_chan_idx, start_chan_idx1;
	struct hostapd_hw_modes *mode;
	struct hostapd_channel_data *chan;
	int n_chans, n_chans1, i, j, frequency = freq, radar_n_chans = 1;
	u8 radar_chan;
	int res = 0;

	/* Our configuration */
	mode = iface->current_mode;
	start_chan_idx = FUNC1(iface, &start_chan_idx1);
	n_chans = FUNC2(iface, &n_chans1);

	/* Check we are on DFS channel(s) */
	if (!FUNC0(iface, start_chan_idx, n_chans))
		return 0;

	/* Reported via radar event */
	switch (chan_width) {
	case CHAN_WIDTH_20_NOHT:
	case CHAN_WIDTH_20:
		radar_n_chans = 1;
		if (frequency == 0)
			frequency = cf1;
		break;
	case CHAN_WIDTH_40:
		radar_n_chans = 2;
		frequency = cf1 - 10;
		break;
	case CHAN_WIDTH_80:
		radar_n_chans = 4;
		frequency = cf1 - 30;
		break;
	case CHAN_WIDTH_160:
		radar_n_chans = 8;
		frequency = cf1 - 70;
		break;
	default:
		FUNC4(MSG_INFO, "DFS chan_width %d not supported",
			   chan_width);
		break;
	}

	FUNC3(frequency, &radar_chan);

	for (i = 0; i < n_chans; i++) {
		chan = &mode->channels[start_chan_idx + i];
		if (!(chan->flag & HOSTAPD_CHAN_RADAR))
			continue;
		for (j = 0; j < radar_n_chans; j++) {
			FUNC4(MSG_DEBUG, "checking our: %d, radar: %d",
				   chan->chan, radar_chan + j * 4);
			if (chan->chan == radar_chan + j * 4)
				res++;
		}
	}

	FUNC4(MSG_DEBUG, "overlapped: %d", res);

	return res;
}