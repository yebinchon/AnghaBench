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
struct TYPE_2__ {int unicast; int /*<<< orphan*/  src; } ;
union wpa_event_data {TYPE_1__ michael_mic_failure; } ;
typedef  int u8 ;
struct nlattr {int dummy; } ;
struct i802_bss {int /*<<< orphan*/  ctx; } ;
typedef  enum nl80211_key_type { ____Placeholder_nl80211_key_type } nl80211_key_type ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_MICHAEL_MIC_FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 size_t NL80211_ATTR_KEY_IDX ; 
 size_t NL80211_ATTR_KEY_SEQ ; 
 size_t NL80211_ATTR_KEY_TYPE ; 
 size_t NL80211_ATTR_MAC ; 
 int NL80211_KEYTYPE_PAIRWISE ; 
 int /*<<< orphan*/  FUNC0 (struct nlattr*) ; 
 int FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (union wpa_event_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union wpa_event_data*) ; 

__attribute__((used)) static void FUNC8(struct i802_bss *bss,
					   struct nlattr *tb[])
{
	union wpa_event_data data;

	FUNC6(MSG_DEBUG, "nl80211: MLME event Michael MIC failure");
	FUNC4(&data, 0, sizeof(data));
	if (tb[NL80211_ATTR_MAC]) {
		FUNC5(MSG_DEBUG, "nl80211: Source MAC address",
			    FUNC0(tb[NL80211_ATTR_MAC]),
			    FUNC3(tb[NL80211_ATTR_MAC]));
		data.michael_mic_failure.src = FUNC0(tb[NL80211_ATTR_MAC]);
	}
	if (tb[NL80211_ATTR_KEY_SEQ]) {
		FUNC5(MSG_DEBUG, "nl80211: TSC",
			    FUNC0(tb[NL80211_ATTR_KEY_SEQ]),
			    FUNC3(tb[NL80211_ATTR_KEY_SEQ]));
	}
	if (tb[NL80211_ATTR_KEY_TYPE]) {
		enum nl80211_key_type key_type =
			FUNC1(tb[NL80211_ATTR_KEY_TYPE]);
		FUNC6(MSG_DEBUG, "nl80211: Key Type %d", key_type);
		if (key_type == NL80211_KEYTYPE_PAIRWISE)
			data.michael_mic_failure.unicast = 1;
	} else
		data.michael_mic_failure.unicast = 1;

	if (tb[NL80211_ATTR_KEY_IDX]) {
		u8 key_id = FUNC2(tb[NL80211_ATTR_KEY_IDX]);
		FUNC6(MSG_DEBUG, "nl80211: Key Id %d", key_id);
	}

	FUNC7(bss->ctx, EVENT_MICHAEL_MIC_FAILURE, &data);
}