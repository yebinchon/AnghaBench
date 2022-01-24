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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_ssid_value {int dummy; } ;
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int FUNC0 (struct hostapd_data*,int /*<<< orphan*/ *,struct wpa_ssid_value*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,struct wpa_ssid_value*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct hostapd_data *hapd,
					      char *buf)
{
	struct wpa_ssid_value ssid;
	u8 bssid[ETH_ALEN];
	char *tmp;

	if (FUNC1(buf, bssid)) {
		FUNC4(MSG_ERROR, "CTRL: REMOVE_NEIGHBOR: Bad BSSID");
		return -1;
	}

	tmp = FUNC2(buf, "ssid=");
	if (!tmp || FUNC3(tmp + 5, &ssid)) {
		FUNC4(MSG_ERROR,
			   "CTRL: REMOVE_NEIGHBORr: Bad or missing SSID");
		return -1;
	}

	return FUNC0(hapd, bssid, &ssid);
}