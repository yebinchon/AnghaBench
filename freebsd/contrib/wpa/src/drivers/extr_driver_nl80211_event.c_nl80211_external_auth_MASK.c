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
struct TYPE_2__ {scalar_t__ ssid_len; void* key_mgmt_suite; int /*<<< orphan*/  action; void* bssid; void* ssid; } ;
union wpa_event_data {TYPE_1__ external_auth; } ;
struct wpa_driver_nl80211_data {int /*<<< orphan*/  ctx; } ;
struct nlattr {int dummy; } ;
typedef  int /*<<< orphan*/  event ;
typedef  enum nl80211_external_auth_action { ____Placeholder_nl80211_external_auth_action } nl80211_external_auth_action ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_EXTERNAL_AUTH ; 
 int /*<<< orphan*/  EXT_AUTH_ABORT ; 
 int /*<<< orphan*/  EXT_AUTH_START ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 size_t NL80211_ATTR_AKM_SUITES ; 
 size_t NL80211_ATTR_BSSID ; 
 size_t NL80211_ATTR_EXTERNAL_AUTH_ACTION ; 
 size_t NL80211_ATTR_SSID ; 
#define  NL80211_EXTERNAL_AUTH_ABORT 129 
#define  NL80211_EXTERNAL_AUTH_START 128 
 scalar_t__ SSID_MAX_LEN ; 
 void* FUNC0 (struct nlattr*) ; 
 void* FUNC1 (struct nlattr*) ; 
 scalar_t__ FUNC2 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (union wpa_event_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union wpa_event_data*) ; 

__attribute__((used)) static void FUNC6(struct wpa_driver_nl80211_data *drv,
				  struct nlattr **tb)
{
	union wpa_event_data event;
	enum nl80211_external_auth_action act;

	if (!tb[NL80211_ATTR_AKM_SUITES] ||
	    !tb[NL80211_ATTR_EXTERNAL_AUTH_ACTION] ||
	    !tb[NL80211_ATTR_BSSID] ||
	    !tb[NL80211_ATTR_SSID])
		return;

	FUNC3(&event, 0, sizeof(event));
	act = FUNC1(tb[NL80211_ATTR_EXTERNAL_AUTH_ACTION]);
	switch (act) {
	case NL80211_EXTERNAL_AUTH_START:
		event.external_auth.action = EXT_AUTH_START;
		break;
	case NL80211_EXTERNAL_AUTH_ABORT:
		event.external_auth.action = EXT_AUTH_ABORT;
		break;
	default:
		return;
	}

	event.external_auth.key_mgmt_suite =
		FUNC1(tb[NL80211_ATTR_AKM_SUITES]);

	event.external_auth.ssid_len = FUNC2(tb[NL80211_ATTR_SSID]);
	if (event.external_auth.ssid_len > SSID_MAX_LEN)
		return;
	event.external_auth.ssid = FUNC0(tb[NL80211_ATTR_SSID]);

	event.external_auth.bssid = FUNC0(tb[NL80211_ATTR_BSSID]);

	FUNC4(MSG_DEBUG,
		   "nl80211: External auth action: %u, AKM: 0x%x",
		   event.external_auth.action,
		   event.external_auth.key_mgmt_suite);
	FUNC5(drv->ctx, EVENT_EXTERNAL_AUTH, &event);
}