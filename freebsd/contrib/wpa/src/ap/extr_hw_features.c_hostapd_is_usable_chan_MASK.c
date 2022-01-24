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
struct hostapd_iface {int /*<<< orphan*/  current_mode; } ;
struct hostapd_channel_data {int flag; } ;

/* Variables and functions */
 int HOSTAPD_CHAN_DISABLED ; 
 int HOSTAPD_CHAN_NO_IR ; 
 int HOSTAPD_CHAN_RADAR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (struct hostapd_channel_data*) ; 
 struct hostapd_channel_data* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,char*,int,char*,char*) ; 

__attribute__((used)) static int FUNC3(struct hostapd_iface *iface,
				  int channel, int primary)
{
	struct hostapd_channel_data *chan;

	if (!iface->current_mode)
		return 0;

	chan = FUNC1(iface->current_mode, channel, NULL);
	if (!chan)
		return 0;

	if ((primary && FUNC0(chan)) ||
	    (!primary && !(chan->flag & HOSTAPD_CHAN_DISABLED)))
		return 1;

	FUNC2(MSG_INFO,
		   "Channel %d (%s) not allowed for AP mode, flags: 0x%x%s%s",
		   channel, primary ? "primary" : "secondary",
		   chan->flag,
		   chan->flag & HOSTAPD_CHAN_NO_IR ? " NO-IR" : "",
		   chan->flag & HOSTAPD_CHAN_RADAR ? " RADAR" : "");
	return 0;
}