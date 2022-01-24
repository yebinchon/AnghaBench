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
typedef  int /*<<< orphan*/  u32 ;
struct hostapd_hw_modes {int num_channels; struct hostapd_channel_data* channels; } ;
struct hostapd_channel_data {scalar_t__ freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hostapd_channel_data*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_channel_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_channel_data*,int) ; 
 struct hostapd_channel_data* FUNC3 (struct hostapd_hw_modes*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct hostapd_hw_modes *mode,
				    int first_chan_idx, int num_chans,
				    int skip_radar)
{
	struct hostapd_channel_data *first_chan, *chan;
	int i;
	u32 bw = FUNC4(num_chans);

	if (first_chan_idx + num_chans > mode->num_channels)
		return 0;

	first_chan = &mode->channels[first_chan_idx];

	/* hostapd DFS implementation assumes the first channel as primary.
	 * If it's not allowed to use the first channel as primary, decline the
	 * whole channel range. */
	if (!FUNC1(first_chan))
		return 0;

	for (i = 0; i < num_chans; i++) {
		chan = FUNC3(mode, first_chan->freq + i * 20,
					 first_chan_idx);
		if (!chan)
			return 0;

		/* HT 40 MHz secondary channel availability checked only for
		 * primary channel */
		if (!FUNC0(chan, bw, 1, !i))
			return 0;

		if (!FUNC2(chan, skip_radar))
			return 0;
	}

	return 1;
}