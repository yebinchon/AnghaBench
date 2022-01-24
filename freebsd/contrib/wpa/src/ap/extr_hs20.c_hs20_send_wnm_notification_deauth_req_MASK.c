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
typedef  int /*<<< orphan*/  u8 ;
typedef  struct wpabuf const wpabuf ;
struct hostapd_data {TYPE_1__* iface; } ;
struct TYPE_2__ {int /*<<< orphan*/  freq; } ;

/* Variables and functions */
 int HS20_WNM_DEAUTH_IMMINENT_NOTICE ; 
 int /*<<< orphan*/  OUI_WFA ; 
 int WLAN_ACTION_WNM ; 
 int WLAN_EID_VENDOR_SPECIFIC ; 
 int WNM_NOTIFICATION_REQ ; 
 int FUNC0 (struct hostapd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wpabuf const* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf const*,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf const*,int) ; 

int FUNC8(struct hostapd_data *hapd,
					  const u8 *addr,
					  const struct wpabuf *payload)
{
	struct wpabuf *buf;
	int ret;

	/* TODO: should refuse to send notification if the STA is not associated
	 * or if the STA did not indicate support for WNM-Notification */

	buf = FUNC1(4 + 6 + FUNC4(payload));
	if (buf == NULL)
		return -1;

	FUNC7(buf, WLAN_ACTION_WNM);
	FUNC7(buf, WNM_NOTIFICATION_REQ);
	FUNC7(buf, 1); /* Dialog token */
	FUNC7(buf, 1); /* Type - 1 reserved for WFA */

	/* Deauthentication Imminent Notice subelement */
	FUNC7(buf, WLAN_EID_VENDOR_SPECIFIC);
	FUNC7(buf, 4 + FUNC4(payload));
	FUNC5(buf, OUI_WFA);
	FUNC7(buf, HS20_WNM_DEAUTH_IMMINENT_NOTICE);
	FUNC6(buf, payload);

	ret = FUNC0(hapd, hapd->iface->freq, 0, addr,
				      FUNC3(buf), FUNC4(buf));

	FUNC2(buf);

	return ret;
}