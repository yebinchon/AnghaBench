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
struct hostapd_iface {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct hostapd_iface*,int,int) ; 
 int FUNC1 (struct hostapd_iface*,int*) ; 
 int FUNC2 (struct hostapd_iface*,int*) ; 

__attribute__((used)) static int FUNC3(struct hostapd_iface *iface)
{
	int n_chans, n_chans1, start_chan_idx, start_chan_idx1;

	/* Get the start (first) channel for current configuration */
	start_chan_idx = FUNC1(iface, &start_chan_idx1);
	if (start_chan_idx < 0)
		return 0;

	/* Get the number of used channels, depending on width */
	n_chans = FUNC2(iface, &n_chans1);

	/* Check if all channels are DFS available */
	return FUNC0(iface, start_chan_idx, n_chans);
}