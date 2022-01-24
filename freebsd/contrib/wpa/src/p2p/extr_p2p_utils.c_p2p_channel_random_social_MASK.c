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
typedef  int u8 ;
struct wpa_freq_range_list {int dummy; } ;
struct p2p_channels {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct wpa_freq_range_list*,int) ; 
 int FUNC1 (int*,unsigned int) ; 
 scalar_t__ FUNC2 (struct p2p_channels*,int,int) ; 

int FUNC3(struct p2p_channels *chans, u8 *op_class,
			      u8 *op_channel,
			      struct wpa_freq_range_list *avoid_list,
			      struct wpa_freq_range_list *disallow_list)
{
	u8 chan[4];
	unsigned int num_channels = 0;

	/* Try to find available social channels from 2.4 GHz.
	 * If the avoid_list includes any of the 2.4 GHz social channels, that
	 * channel is not allowed by p2p_channels_includes() rules. However, it
	 * is assumed to allow minimal traffic for P2P negotiation, so allow it
	 * here for social channel selection unless explicitly disallowed in the
	 * disallow_list. */
	if (FUNC2(chans, 81, 1) ||
	    (FUNC0(avoid_list, 2412) &&
	     !FUNC0(disallow_list, 2412)))
		chan[num_channels++] = 1;
	if (FUNC2(chans, 81, 6) ||
	    (FUNC0(avoid_list, 2437) &&
	     !FUNC0(disallow_list, 2437)))
		chan[num_channels++] = 6;
	if (FUNC2(chans, 81, 11) ||
	    (FUNC0(avoid_list, 2462) &&
	     !FUNC0(disallow_list, 2462)))
		chan[num_channels++] = 11;

	/* Try to find available social channels from 60 GHz */
	if (FUNC2(chans, 180, 2))
		chan[num_channels++] = 2;

	if (num_channels == 0)
		return -1;

	*op_channel = FUNC1(chan, num_channels);
	if (*op_channel == 2)
		*op_class = 180;
	else
		*op_class = 81;

	return 0;
}