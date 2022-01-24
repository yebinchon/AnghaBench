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
struct TYPE_2__ {int wds; int /*<<< orphan*/  addr; int /*<<< orphan*/  bssid; } ;
union wpa_event_data {TYPE_1__ rx_from_unknown; } ;
struct wpa_driver_nl80211_data {int /*<<< orphan*/  ctx; } ;
struct nlattr {int dummy; } ;
struct i802_bss {int /*<<< orphan*/  addr; struct wpa_driver_nl80211_data* drv; } ;
typedef  int /*<<< orphan*/  event ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_RX_FROM_UNKNOWN ; 
 size_t NL80211_ATTR_MAC ; 
 int /*<<< orphan*/  FUNC0 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (union wpa_event_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union wpa_event_data*) ; 

__attribute__((used)) static void FUNC3(struct i802_bss *bss, struct nlattr **tb,
				   int wds)
{
	struct wpa_driver_nl80211_data *drv = bss->drv;
	union wpa_event_data event;

	if (!tb[NL80211_ATTR_MAC])
		return;

	FUNC1(&event, 0, sizeof(event));
	event.rx_from_unknown.bssid = bss->addr;
	event.rx_from_unknown.addr = FUNC0(tb[NL80211_ATTR_MAC]);
	event.rx_from_unknown.wds = wds;

	FUNC2(drv->ctx, EVENT_RX_FROM_UNKNOWN, &event);
}