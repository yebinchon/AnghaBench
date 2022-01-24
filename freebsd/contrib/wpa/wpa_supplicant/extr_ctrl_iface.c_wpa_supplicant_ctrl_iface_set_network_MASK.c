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
struct wpa_ssid {int bssid_set; int disabled; int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct wpa_ssid* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC8 (struct wpa_supplicant*,struct wpa_ssid*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_supplicant*,struct wpa_ssid*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpa_supplicant*,struct wpa_ssid*) ; 

__attribute__((used)) static int FUNC11(
	struct wpa_supplicant *wpa_s, char *cmd)
{
	int id, ret, prev_bssid_set, prev_disabled;
	struct wpa_ssid *ssid;
	char *name, *value;
	u8 prev_bssid[ETH_ALEN];

	/* cmd: "<network id> <variable name> <value>" */
	name = FUNC3(cmd, ' ');
	if (name == NULL)
		return -1;
	*name++ = '\0';

	value = FUNC3(name, ' ');
	if (value == NULL)
		return -1;
	*value++ = '\0';

	id = FUNC0(cmd);
	FUNC7(MSG_DEBUG, "CTRL_IFACE: SET_NETWORK id=%d name='%s'",
		   id, name);
	FUNC6(MSG_DEBUG, "CTRL_IFACE: value",
			      (u8 *) value, FUNC4(value));

	ssid = FUNC5(wpa_s->conf, id);
	if (ssid == NULL) {
		FUNC7(MSG_DEBUG, "CTRL_IFACE: Could not find network "
			   "id=%d", id);
		return -1;
	}

	prev_bssid_set = ssid->bssid_set;
	prev_disabled = ssid->disabled;
	FUNC2(prev_bssid, ssid->bssid, ETH_ALEN);
	ret = FUNC8(wpa_s, ssid, name,
						       value);
	if (ret == 0 &&
	    (ssid->bssid_set != prev_bssid_set ||
	     FUNC1(ssid->bssid, prev_bssid, ETH_ALEN) != 0))
		FUNC9(wpa_s, ssid);

	if (prev_disabled != ssid->disabled &&
	    (prev_disabled == 2 || ssid->disabled == 2))
		FUNC10(wpa_s, ssid);

	return ret;
}