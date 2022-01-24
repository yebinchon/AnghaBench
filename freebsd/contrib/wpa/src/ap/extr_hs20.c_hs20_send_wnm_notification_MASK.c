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
typedef  size_t u8 ;
struct wpabuf {int dummy; } ;
struct hostapd_data {TYPE_1__* iface; } ;
struct TYPE_2__ {int /*<<< orphan*/  freq; } ;

/* Variables and functions */
 size_t HS20_WNM_SUB_REM_NEEDED ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  OUI_WFA ; 
 size_t WLAN_ACTION_WNM ; 
 size_t WLAN_EID_VENDOR_SPECIFIC ; 
 size_t WNM_NOTIFICATION_REQ ; 
 int FUNC0 (struct hostapd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 struct wpabuf* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,size_t) ; 

int FUNC10(struct hostapd_data *hapd, const u8 *addr,
			       u8 osu_method, const char *url)
{
	struct wpabuf *buf;
	size_t len = 0;
	int ret;

	/* TODO: should refuse to send notification if the STA is not associated
	 * or if the STA did not indicate support for WNM-Notification */

	if (url) {
		len = 1 + FUNC1(url);
		if (5 + len > 255) {
			FUNC2(MSG_INFO, "HS 2.0: Too long URL for "
				   "WNM-Notification: '%s'", url);
			return -1;
		}
	}

	buf = FUNC3(4 + 7 + len);
	if (buf == NULL)
		return -1;

	FUNC9(buf, WLAN_ACTION_WNM);
	FUNC9(buf, WNM_NOTIFICATION_REQ);
	FUNC9(buf, 1); /* Dialog token */
	FUNC9(buf, 1); /* Type - 1 reserved for WFA */

	/* Subscription Remediation subelement */
	FUNC9(buf, WLAN_EID_VENDOR_SPECIFIC);
	FUNC9(buf, 5 + len);
	FUNC7(buf, OUI_WFA);
	FUNC9(buf, HS20_WNM_SUB_REM_NEEDED);
	if (url) {
		FUNC9(buf, len - 1);
		FUNC8(buf, url, len - 1);
		FUNC9(buf, osu_method);
	} else {
		/* Server URL and Server Method fields not included */
		FUNC9(buf, 0);
	}

	ret = FUNC0(hapd, hapd->iface->freq, 0, addr,
				      FUNC5(buf), FUNC6(buf));

	FUNC4(buf);

	return ret;
}