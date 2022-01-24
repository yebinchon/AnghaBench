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
struct TYPE_2__ {size_t data_len; int /*<<< orphan*/  ack; int /*<<< orphan*/  const* data; int /*<<< orphan*/  dst; int /*<<< orphan*/  stype; int /*<<< orphan*/  type; } ;
union wpa_event_data {TYPE_1__ tx_status; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct wpa_driver_nl80211_data {scalar_t__ send_action_cookie; int /*<<< orphan*/  ctx; int /*<<< orphan*/  nlmode; } ;
struct nlattr {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr1; int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  event ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_TX_STATUS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (union wpa_event_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union wpa_event_data*) ; 

__attribute__((used)) static void FUNC8(struct wpa_driver_nl80211_data *drv,
				      struct nlattr *cookie, const u8 *frame,
				      size_t len, struct nlattr *ack)
{
	union wpa_event_data event;
	const struct ieee80211_hdr *hdr;
	u16 fc;

	FUNC6(MSG_DEBUG, "nl80211: Frame TX status event");
	if (!FUNC2(drv->nlmode)) {
		u64 cookie_val;

		if (!cookie)
			return;

		cookie_val = FUNC4(cookie);
		FUNC6(MSG_DEBUG, "nl80211: Action TX status:"
			   " cookie=0x%llx%s (ack=%d)",
			   (long long unsigned int) cookie_val,
			   cookie_val == drv->send_action_cookie ?
			   " (match)" : " (unknown)", ack != NULL);
		if (cookie_val != drv->send_action_cookie)
			return;
	}

	hdr = (const struct ieee80211_hdr *) frame;
	fc = FUNC3(hdr->frame_control);

	FUNC5(&event, 0, sizeof(event));
	event.tx_status.type = FUNC1(fc);
	event.tx_status.stype = FUNC0(fc);
	event.tx_status.dst = hdr->addr1;
	event.tx_status.data = frame;
	event.tx_status.data_len = len;
	event.tx_status.ack = ack != NULL;
	FUNC7(drv->ctx, EVENT_TX_STATUS, &event);
}