#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int ht_enabled; int ch_offset; void* freq; void* cf2; void* cf1; int /*<<< orphan*/  ch_width; } ;
union wpa_event_data {TYPE_1__ ch_switch; } ;
struct wpa_driver_nl80211_data {void* assoc_freq; } ;
struct nlattr {int dummy; } ;
struct i802_bss {int /*<<< orphan*/  ctx; void* freq; } ;
typedef  enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_CH_SWITCH ; 
 int /*<<< orphan*/  EVENT_CH_SWITCH_STARTED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_WARNING ; 
#define  NL80211_CHAN_HT20 131 
#define  NL80211_CHAN_HT40MINUS 130 
#define  NL80211_CHAN_HT40PLUS 129 
#define  NL80211_CHAN_NO_HT 128 
 int FUNC0 (void*,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 struct i802_bss* FUNC2 (struct wpa_driver_nl80211_data*,int) ; 
 void* FUNC3 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (union wpa_event_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union wpa_event_data*) ; 

__attribute__((used)) static void FUNC7(struct wpa_driver_nl80211_data *drv,
				 struct nlattr *ifindex, struct nlattr *freq,
				 struct nlattr *type, struct nlattr *bw,
				 struct nlattr *cf1, struct nlattr *cf2,
				 int finished)
{
	struct i802_bss *bss;
	union wpa_event_data data;
	int ht_enabled = 1;
	int chan_offset = 0;
	int ifidx;

	FUNC5(MSG_DEBUG, "nl80211: Channel switch%s event",
		   finished ? "" : " started");

	if (!freq)
		return;

	ifidx = FUNC3(ifindex);
	bss = FUNC2(drv, ifidx);
	if (bss == NULL) {
		FUNC5(MSG_WARNING, "nl80211: Unknown ifindex (%d) for channel switch, ignoring",
			   ifidx);
		return;
	}

	if (type) {
		enum nl80211_channel_type ch_type = FUNC3(type);

		FUNC5(MSG_DEBUG, "nl80211: Channel type: %d", ch_type);
		switch (ch_type) {
		case NL80211_CHAN_NO_HT:
			ht_enabled = 0;
			break;
		case NL80211_CHAN_HT20:
			break;
		case NL80211_CHAN_HT40PLUS:
			chan_offset = 1;
			break;
		case NL80211_CHAN_HT40MINUS:
			chan_offset = -1;
			break;
		}
	} else if (bw && cf1) {
		/* This can happen for example with VHT80 ch switch */
		chan_offset = FUNC0(FUNC3(bw),
						    FUNC3(freq),
						    FUNC3(cf1),
						    cf2 ? FUNC3(cf2) : 0);
	} else {
		FUNC5(MSG_WARNING, "nl80211: Unknown secondary channel information - following channel definition calculations may fail");
	}

	FUNC4(&data, 0, sizeof(data));
	data.ch_switch.freq = FUNC3(freq);
	data.ch_switch.ht_enabled = ht_enabled;
	data.ch_switch.ch_offset = chan_offset;
	if (bw)
		data.ch_switch.ch_width = FUNC1(FUNC3(bw));
	if (cf1)
		data.ch_switch.cf1 = FUNC3(cf1);
	if (cf2)
		data.ch_switch.cf2 = FUNC3(cf2);

	if (finished)
		bss->freq = data.ch_switch.freq;
	drv->assoc_freq = data.ch_switch.freq;

	FUNC6(bss->ctx, finished ?
			     EVENT_CH_SWITCH : EVENT_CH_SWITCH_STARTED, &data);
}