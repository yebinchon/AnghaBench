#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int /*<<< orphan*/  mac_addr; } ;
struct wps_data {TYPE_2__* wps; int /*<<< orphan*/  p2p_dev_addr; TYPE_1__ peer_dev; scalar_t__ new_psk_len; } ;
struct wpabuf {int dummy; } ;
typedef  int /*<<< orphan*/  psk ;
typedef  int /*<<< orphan*/  hex ;
struct TYPE_4__ {int ap_auth_type; int network_key_len; char* network_key; scalar_t__ registrar; } ;

/* Variables and functions */
 int ATTR_NETWORK_KEY ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int WPS_AUTH_WPA2PSK ; 
 int WPS_AUTH_WPAPSK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(struct wps_data *wps, struct wpabuf *msg)
{
	if ((wps->wps->ap_auth_type & (WPS_AUTH_WPAPSK | WPS_AUTH_WPA2PSK)) &&
	    wps->wps->network_key_len == 0) {
		char hex[65];
		u8 psk[32];
		/* Generate a random per-device PSK */
		if (FUNC1() != 1 ||
		    FUNC0(psk, sizeof(psk)) < 0) {
			FUNC3(MSG_INFO,
				   "WPS: Could not generate random PSK");
			return -1;
		}
		FUNC2(MSG_DEBUG, "WPS: Generated per-device PSK",
				psk, sizeof(psk));
		FUNC3(MSG_DEBUG, "WPS:  * Network Key (len=%u)",
			   (unsigned int) wps->new_psk_len * 2);
		FUNC4(hex, sizeof(hex), psk, sizeof(psk));
		FUNC5(msg, ATTR_NETWORK_KEY);
		FUNC5(msg, sizeof(psk) * 2);
		FUNC6(msg, hex, sizeof(psk) * 2);
		if (wps->wps->registrar) {
			FUNC7(wps->wps->registrar,
				       wps->peer_dev.mac_addr,
				       wps->p2p_dev_addr, psk, sizeof(psk));
		}
		return 0;
	}

	FUNC3(MSG_DEBUG, "WPS:  * Network Key (len=%u)",
		   (unsigned int) wps->wps->network_key_len);
	FUNC5(msg, ATTR_NETWORK_KEY);
	FUNC5(msg, wps->wps->network_key_len);
	FUNC6(msg, wps->wps->network_key, wps->wps->network_key_len);
	return 0;
}