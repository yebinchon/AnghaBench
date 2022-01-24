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
struct TYPE_2__ {int /*<<< orphan*/  initiator; } ;
union wpa_event_data {TYPE_1__ channel_list_changed; } ;
struct wpa_driver_nl80211_data {int /*<<< orphan*/  ctx; } ;
struct nlattr {int dummy; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_CHANNEL_LIST_CHANGED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 size_t NL80211_ATTR_FREQ_AFTER ; 
 size_t NL80211_ATTR_FREQ_BEFORE ; 
 int /*<<< orphan*/  REGDOM_BEACON_HINT ; 
 int /*<<< orphan*/  FUNC0 (char*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (union wpa_event_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union wpa_event_data*) ; 

__attribute__((used)) static void FUNC4(struct wpa_driver_nl80211_data *drv,
					   struct nlattr *tb[])
{
	union wpa_event_data data;

	FUNC2(MSG_DEBUG, "nl80211: Regulatory beacon hint");
	FUNC1(&data, 0, sizeof(data));
	data.channel_list_changed.initiator = REGDOM_BEACON_HINT;

	if (tb[NL80211_ATTR_FREQ_BEFORE])
		FUNC0("before", tb[NL80211_ATTR_FREQ_BEFORE]);
	if (tb[NL80211_ATTR_FREQ_AFTER])
		FUNC0("after", tb[NL80211_ATTR_FREQ_AFTER]);

	FUNC3(drv->ctx, EVENT_CHANNEL_LIST_CHANGED, &data);
}