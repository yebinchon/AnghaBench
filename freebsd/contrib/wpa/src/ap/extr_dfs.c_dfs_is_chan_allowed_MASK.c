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
struct hostapd_channel_data {int chan; } ;

/* Variables and functions */
 unsigned int FUNC0 (int*) ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC2(struct hostapd_channel_data *chan, int n_chans)
{
	/*
	 * The tables contain first valid channel number based on channel width.
	 * We will also choose this first channel as the control one.
	 */
	int allowed_40[] = { 36, 44, 52, 60, 100, 108, 116, 124, 132, 149, 157,
			     184, 192 };
	/*
	 * VHT80, valid channels based on center frequency:
	 * 42, 58, 106, 122, 138, 155
	 */
	int allowed_80[] = { 36, 52, 100, 116, 132, 149 };
	/*
	 * VHT160 valid channels based on center frequency:
	 * 50, 114
	 */
	int allowed_160[] = { 36, 100 };
	int *allowed = allowed_40;
	unsigned int i, allowed_no = 0;

	switch (n_chans) {
	case 2:
		allowed = allowed_40;
		allowed_no = FUNC0(allowed_40);
		break;
	case 4:
		allowed = allowed_80;
		allowed_no = FUNC0(allowed_80);
		break;
	case 8:
		allowed = allowed_160;
		allowed_no = FUNC0(allowed_160);
		break;
	default:
		FUNC1(MSG_DEBUG, "Unknown width for %d channels", n_chans);
		break;
	}

	for (i = 0; i < allowed_no; i++) {
		if (chan->chan == allowed[i])
			return 1;
	}

	return 0;
}