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
struct wpa_supplicant {int /*<<< orphan*/  conf; } ;
struct wpa_ssid {int bssid_set; int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (char*,char) ; 
 struct wpa_ssid* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC7(struct wpa_supplicant *wpa_s,
					   char *cmd)
{
	char *pos;
	int id;
	struct wpa_ssid *ssid;
	u8 bssid[ETH_ALEN];

	/* cmd: "<network id> <BSSID>" */
	pos = FUNC4(cmd, ' ');
	if (pos == NULL)
		return -1;
	*pos++ = '\0';
	id = FUNC0(cmd);
	FUNC6(MSG_DEBUG, "CTRL_IFACE: id=%d bssid='%s'", id, pos);
	if (FUNC1(pos, bssid)) {
		FUNC6(MSG_DEBUG ,"CTRL_IFACE: invalid BSSID '%s'", pos);
		return -1;
	}

	ssid = FUNC5(wpa_s->conf, id);
	if (ssid == NULL) {
		FUNC6(MSG_DEBUG, "CTRL_IFACE: Could not find SSID id=%d "
			   "to update", id);
		return -1;
	}

	FUNC3(ssid->bssid, bssid, ETH_ALEN);
	ssid->bssid_set = !FUNC2(bssid);

	return 0;
}