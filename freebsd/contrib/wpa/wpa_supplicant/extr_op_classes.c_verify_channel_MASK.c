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
struct hostapd_hw_modes {int dummy; } ;
typedef  enum chan_allowed { ____Placeholder_chan_allowed } chan_allowed ;

/* Variables and functions */
 int ALLOWED ; 
 scalar_t__ BW160 ; 
 scalar_t__ BW40MINUS ; 
 scalar_t__ BW40PLUS ; 
 scalar_t__ BW80 ; 
 scalar_t__ BW80P80 ; 
 unsigned int HOSTAPD_CHAN_HT40MINUS ; 
 unsigned int HOSTAPD_CHAN_HT40PLUS ; 
 int NOT_ALLOWED ; 
 int NO_IR ; 
 int FUNC0 (struct hostapd_hw_modes*,scalar_t__,unsigned int*) ; 
 int FUNC1 (struct hostapd_hw_modes*,scalar_t__) ; 
 int FUNC2 (struct hostapd_hw_modes*,scalar_t__) ; 

enum chan_allowed FUNC3(struct hostapd_hw_modes *mode, u8 channel,
				 u8 bw)
{
	unsigned int flag = 0;
	enum chan_allowed res, res2;

	res2 = res = FUNC0(mode, channel, &flag);
	if (bw == BW40MINUS) {
		if (!(flag & HOSTAPD_CHAN_HT40MINUS))
			return NOT_ALLOWED;
		res2 = FUNC0(mode, channel - 4, NULL);
	} else if (bw == BW40PLUS) {
		if (!(flag & HOSTAPD_CHAN_HT40PLUS))
			return NOT_ALLOWED;
		res2 = FUNC0(mode, channel + 4, NULL);
	} else if (bw == BW80) {
		/*
		 * channel is a center channel and as such, not necessarily a
		 * valid 20 MHz channels. Override earlier allow_channel()
		 * result and use only the 80 MHz specific version.
		 */
		res2 = res = FUNC2(mode, channel);
	} else if (bw == BW160) {
		/*
		 * channel is a center channel and as such, not necessarily a
		 * valid 20 MHz channels. Override earlier allow_channel()
		 * result and use only the 160 MHz specific version.
		 */
		res2 = res = FUNC1(mode, channel);
	} else if (bw == BW80P80) {
		/*
		 * channel is a center channel and as such, not necessarily a
		 * valid 20 MHz channels. Override earlier allow_channel()
		 * result and use only the 80 MHz specific version.
		 */
		res2 = res = FUNC2(mode, channel);
	}

	if (res == NOT_ALLOWED || res2 == NOT_ALLOWED)
		return NOT_ALLOWED;

	if (res == NO_IR || res2 == NO_IR)
		return NO_IR;

	return ALLOWED;
}