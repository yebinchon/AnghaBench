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
struct hostapd_iface {TYPE_2__* current_mode; TYPE_1__* conf; } ;
struct TYPE_4__ {scalar_t__ mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  ieee80211h; } ;

/* Variables and functions */
 scalar_t__ HOSTAPD_MODE_IEEE80211A ; 
 int FUNC0 (struct hostapd_iface*,int,int) ; 
 int FUNC1 (struct hostapd_iface*,int*) ; 
 int FUNC2 (struct hostapd_iface*,int*) ; 

int FUNC3(struct hostapd_iface *iface)
{
	int n_chans, n_chans1, start_chan_idx, start_chan_idx1, res;

	if (!iface->conf->ieee80211h || !iface->current_mode ||
	    iface->current_mode->mode != HOSTAPD_MODE_IEEE80211A)
		return 0;

	/* Get start (first) channel for current configuration */
	start_chan_idx = FUNC1(iface, &start_chan_idx1);
	if (start_chan_idx == -1)
		return -1;

	/* Get number of used channels, depend on width */
	n_chans = FUNC2(iface, &n_chans1);

	/* Check if any of configured channels require DFS */
	res = FUNC0(iface, start_chan_idx, n_chans);
	if (res)
		return res;
	if (start_chan_idx1 >= 0 && n_chans1 > 0)
		res = FUNC0(iface, start_chan_idx1, n_chans1);
	return res;
}