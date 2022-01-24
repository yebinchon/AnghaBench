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
struct wpabuf {int dummy; } ;
struct wpa_ssid_value {int dummy; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {int* radio_measurements; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int WLAN_RRM_CAPS_NEIGHBOR_REPORT ; 
 int FUNC0 (struct hostapd_data*,int /*<<< orphan*/ *,struct wpa_ssid_value*,struct wpabuf*,struct wpabuf*,struct wpabuf*,int) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,char) ; 
 char* FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,struct wpa_ssid_value*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 struct wpabuf* FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct hostapd_data *hapd, char *buf)
{
	struct wpa_ssid_value ssid;
	u8 bssid[ETH_ALEN];
	struct wpabuf *nr, *lci = NULL, *civic = NULL;
	int stationary = 0;
	char *tmp;
	int ret;

	if (!(hapd->conf->radio_measurements[0] &
	      WLAN_RRM_CAPS_NEIGHBOR_REPORT)) {
		FUNC5(MSG_ERROR,
			   "CTRL: SET_NEIGHBOR: Neighbor report is not enabled");
		return -1;
	}

	if (FUNC1(buf, bssid)) {
		FUNC5(MSG_ERROR, "CTRL: SET_NEIGHBOR: Bad BSSID");
		return -1;
	}

	tmp = FUNC3(buf, "ssid=");
	if (!tmp || FUNC4(tmp + 5, &ssid)) {
		FUNC5(MSG_ERROR,
			   "CTRL: SET_NEIGHBOR: Bad or missing SSID");
		return -1;
	}
	buf = FUNC2(tmp + 6, tmp[5] == '"' ? '"' : ' ');
	if (!buf)
		return -1;

	tmp = FUNC3(buf, "nr=");
	if (!tmp) {
		FUNC5(MSG_ERROR,
			   "CTRL: SET_NEIGHBOR: Missing Neighbor Report element");
		return -1;
	}

	buf = FUNC2(tmp, ' ');
	if (buf)
		*buf++ = '\0';

	nr = FUNC7(tmp + 3);
	if (!nr) {
		FUNC5(MSG_ERROR,
			   "CTRL: SET_NEIGHBOR: Bad Neighbor Report element");
		return -1;
	}

	if (!buf)
		goto set;

	tmp = FUNC3(buf, "lci=");
	if (tmp) {
		buf = FUNC2(tmp, ' ');
		if (buf)
			*buf++ = '\0';
		lci = FUNC7(tmp + 4);
		if (!lci) {
			FUNC5(MSG_ERROR,
				   "CTRL: SET_NEIGHBOR: Bad LCI subelement");
			FUNC6(nr);
			return -1;
		}
	}

	if (!buf)
		goto set;

	tmp = FUNC3(buf, "civic=");
	if (tmp) {
		buf = FUNC2(tmp, ' ');
		if (buf)
			*buf++ = '\0';
		civic = FUNC7(tmp + 6);
		if (!civic) {
			FUNC5(MSG_ERROR,
				   "CTRL: SET_NEIGHBOR: Bad civic subelement");
			FUNC6(nr);
			FUNC6(lci);
			return -1;
		}
	}

	if (!buf)
		goto set;

	if (FUNC3(buf, "stat"))
		stationary = 1;

set:
	ret = FUNC0(hapd, bssid, &ssid, nr, lci, civic,
				   stationary);

	FUNC6(nr);
	FUNC6(lci);
	FUNC6(civic);

	return ret;
}