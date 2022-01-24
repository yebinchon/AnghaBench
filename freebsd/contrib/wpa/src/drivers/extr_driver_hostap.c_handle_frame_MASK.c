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
struct TYPE_2__ {size_t frame_len; int /*<<< orphan*/ * frame; } ;
union wpa_event_data {TYPE_1__ rx_mgmt; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct hostap_driver_data {int /*<<< orphan*/  hapd; } ;
typedef  int /*<<< orphan*/  event ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_RX_MGMT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ WLAN_FC_PVER ; 
 scalar_t__ WLAN_FC_STYPE_BEACON ; 
#define  WLAN_FC_TYPE_CTRL 130 
#define  WLAN_FC_TYPE_DATA 129 
#define  WLAN_FC_TYPE_MGMT 128 
 int /*<<< orphan*/  FUNC2 (struct hostap_driver_data*,int /*<<< orphan*/ *,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct hostap_driver_data*,int /*<<< orphan*/ *,size_t,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (union wpa_event_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union wpa_event_data*) ; 

__attribute__((used)) static void FUNC10(struct hostap_driver_data *drv, u8 *buf, size_t len)
{
	struct ieee80211_hdr *hdr;
	u16 fc, type, stype;
	size_t data_len = len;
	int ver;
	union wpa_event_data event;

	/* PSPOLL is only 16 bytes, but driver does not (at least yet) pass
	 * these to user space */
	if (len < 24) {
		FUNC8(MSG_MSGDUMP, "handle_frame: too short (%lu)",
			   (unsigned long) len);
		return;
	}

	hdr = (struct ieee80211_hdr *) buf;
	fc = FUNC4(hdr->frame_control);
	type = FUNC1(fc);
	stype = FUNC0(fc);

	if (type != WLAN_FC_TYPE_MGMT || stype != WLAN_FC_STYPE_BEACON) {
		FUNC7(MSG_MSGDUMP, "Received management frame",
			    buf, len);
	}

	ver = fc & WLAN_FC_PVER;

	/* protocol version 2 is reserved for indicating ACKed frame (TX
	 * callbacks), and version 1 for indicating failed frame (no ACK, TX
	 * callbacks) */
	if (ver == 1 || ver == 2) {
		FUNC3(drv, buf, data_len, ver == 2 ? 1 : 0);
		return;
	} else if (ver != 0) {
		FUNC6("unknown protocol version %d\n", ver);
		return;
	}

	switch (type) {
	case WLAN_FC_TYPE_MGMT:
		FUNC5(&event, 0, sizeof(event));
		event.rx_mgmt.frame = buf;
		event.rx_mgmt.frame_len = data_len;
		FUNC9(drv->hapd, EVENT_RX_MGMT, &event);
		break;
	case WLAN_FC_TYPE_CTRL:
		FUNC8(MSG_DEBUG, "CTRL");
		break;
	case WLAN_FC_TYPE_DATA:
		FUNC8(MSG_DEBUG, "DATA");
		FUNC2(drv, buf, data_len, stype);
		break;
	default:
		FUNC8(MSG_DEBUG, "unknown frame type %d", type);
		break;
	}
}