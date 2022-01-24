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
struct wpa_supplicant {int /*<<< orphan*/  conf; int /*<<< orphan*/  eapol; struct wpa_ssid* current_ssid; int /*<<< orphan*/  wpa; } ;
struct wpa_ssid {scalar_t__ passphrase; scalar_t__ ssid_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int FUNC2 (struct wpa_ssid*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_ssid*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct wpa_ssid*) ; 

__attribute__((used)) static int FUNC7(
	struct wpa_supplicant *wpa_s, struct wpa_ssid *ssid,
	char *name, char *value)
{
	int ret;

	ret = FUNC2(ssid, name, value, 0);
	if (ret < 0) {
		FUNC5(MSG_DEBUG, "CTRL_IFACE: Failed to set network "
			   "variable '%s'", name);
		return -1;
	}
	if (ret == 1)
		return 0; /* No change to the previously configured value */

	if (FUNC1(name, "bssid") != 0 &&
	    FUNC1(name, "bssid_hint") != 0 &&
	    FUNC1(name, "priority") != 0) {
		FUNC6(wpa_s->wpa, ssid);

		if (wpa_s->current_ssid == ssid ||
		    wpa_s->current_ssid == NULL) {
			/*
			 * Invalidate the EAP session cache if anything in the
			 * current or previously used configuration changes.
			 */
			FUNC0(wpa_s->eapol);
		}
	}

	if ((FUNC1(name, "psk") == 0 &&
	     value[0] == '"' && ssid->ssid_len) ||
	    (FUNC1(name, "ssid") == 0 && ssid->passphrase))
		FUNC4(ssid);
	else if (FUNC1(name, "priority") == 0)
		FUNC3(wpa_s->conf);

	return 0;
}