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
struct TYPE_2__ {size_t frame_len; int datarate; int ssi_signal; int /*<<< orphan*/ * frame; } ;
union wpa_event_data {TYPE_1__ rx_mgmt; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct wpa_driver_nl80211_data {int /*<<< orphan*/  ctx; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  event ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_RX_MGMT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  WLAN_FC_TYPE_CTRL 130 
#define  WLAN_FC_TYPE_DATA 129 
#define  WLAN_FC_TYPE_MGMT 128 
 int /*<<< orphan*/  FUNC1 (struct wpa_driver_nl80211_data*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union wpa_event_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union wpa_event_data*) ; 

__attribute__((used)) static void FUNC6(struct wpa_driver_nl80211_data *drv,
			 u8 *buf, size_t len, int datarate, int ssi_signal)
{
	struct ieee80211_hdr *hdr;
	u16 fc;
	union wpa_event_data event;

	hdr = (struct ieee80211_hdr *) buf;
	fc = FUNC2(hdr->frame_control);

	switch (FUNC0(fc)) {
	case WLAN_FC_TYPE_MGMT:
		FUNC3(&event, 0, sizeof(event));
		event.rx_mgmt.frame = buf;
		event.rx_mgmt.frame_len = len;
		event.rx_mgmt.datarate = datarate;
		event.rx_mgmt.ssi_signal = ssi_signal;
		FUNC5(drv->ctx, EVENT_RX_MGMT, &event);
		break;
	case WLAN_FC_TYPE_CTRL:
		/* can only get here with PS-Poll frames */
		FUNC4(MSG_DEBUG, "CTRL");
		FUNC1(drv, buf, len);
		break;
	case WLAN_FC_TYPE_DATA:
		FUNC1(drv, buf, len);
		break;
	}
}