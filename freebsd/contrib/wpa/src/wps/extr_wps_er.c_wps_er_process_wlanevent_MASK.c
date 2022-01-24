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
typedef  int u8 ;
struct wps_er_ap {int dummy; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 scalar_t__ FUNC0 (char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 int FUNC4 (struct wpabuf*) ; 
 int* FUNC5 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wps_er_ap*,int*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct wps_er_ap*,int*,struct wpabuf*) ; 

__attribute__((used)) static void FUNC9(struct wps_er_ap *ap,
				     struct wpabuf *event)
{
	u8 *data;
	u8 wlan_event_type;
	u8 wlan_event_mac[ETH_ALEN];
	struct wpabuf msg;

	FUNC1(MSG_MSGDUMP, "WPS ER: Received WLANEvent",
		    FUNC3(event), FUNC4(event));
	if (FUNC4(event) < 1 + 17) {
		FUNC2(MSG_DEBUG, "WPS ER: Too short WLANEvent");
		return;
	}

	data = FUNC5(event);
	wlan_event_type = data[0];
	if (FUNC0((char *) data + 1, wlan_event_mac) < 0) {
		FUNC2(MSG_DEBUG, "WPS ER: Invalid WLANEventMAC in "
			   "WLANEvent");
		return;
	}

	FUNC6(&msg, data + 1 + 17, FUNC4(event) - (1 + 17));

	switch (wlan_event_type) {
	case 1:
		FUNC8(ap, wlan_event_mac, &msg);
		break;
	case 2:
		FUNC7(ap, wlan_event_mac, &msg);
		break;
	default:
		FUNC2(MSG_DEBUG, "WPS ER: Unknown WLANEventType %d",
			   wlan_event_type);
		break;
	}
}