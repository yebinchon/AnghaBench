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
typedef  int u16 ;
struct hostapd_hw_modes {int num_channels; int /*<<< orphan*/  mode; struct hostapd_channel_data* channels; } ;
struct hostapd_channel_data {int flag; int /*<<< orphan*/  freq; } ;
typedef  int /*<<< orphan*/  str ;

/* Variables and functions */
 int HOSTAPD_CHAN_DISABLED ; 
 int HOSTAPD_CHAN_NO_IR ; 
 int HOSTAPD_CHAN_RADAR ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int,char*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(struct hostapd_hw_modes *modes,
				   u16 num_modes)
{
	int i;

	if (!modes)
		return;

	for (i = 0; i < num_modes; i++) {
		struct hostapd_hw_modes *mode = &modes[i];
		char str[200];
		char *pos = str;
		char *end = pos + sizeof(str);
		int j, res;

		for (j = 0; j < mode->num_channels; j++) {
			struct hostapd_channel_data *chan = &mode->channels[j];

			res = FUNC1(pos, end - pos, " %d%s%s%s",
					  chan->freq,
					  (chan->flag & HOSTAPD_CHAN_DISABLED) ?
					  "[DISABLED]" : "",
					  (chan->flag & HOSTAPD_CHAN_NO_IR) ?
					  "[NO_IR]" : "",
					  (chan->flag & HOSTAPD_CHAN_RADAR) ?
					  "[RADAR]" : "");
			if (FUNC2(end - pos, res))
				break;
			pos += res;
		}

		*pos = '\0';
		FUNC3(MSG_DEBUG, "nl80211: Mode IEEE %s:%s",
			   FUNC0(mode->mode), str);
	}
}