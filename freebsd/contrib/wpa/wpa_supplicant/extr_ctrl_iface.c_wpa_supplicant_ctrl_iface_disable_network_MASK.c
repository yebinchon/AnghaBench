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
struct wpa_supplicant {int /*<<< orphan*/  conf; } ;
struct wpa_ssid {int disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 struct wpa_ssid* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,struct wpa_ssid*) ; 

__attribute__((used)) static int FUNC5(
	struct wpa_supplicant *wpa_s, char *cmd)
{
	int id;
	struct wpa_ssid *ssid;

	/* cmd: "<network id>" or "all" */
	if (FUNC1(cmd, "all") == 0) {
		FUNC3(MSG_DEBUG, "CTRL_IFACE: DISABLE_NETWORK all");
		ssid = NULL;
	} else {
		id = FUNC0(cmd);
		FUNC3(MSG_DEBUG, "CTRL_IFACE: DISABLE_NETWORK id=%d", id);

		ssid = FUNC2(wpa_s->conf, id);
		if (ssid == NULL) {
			FUNC3(MSG_DEBUG, "CTRL_IFACE: Could not find "
				   "network id=%d", id);
			return -1;
		}
		if (ssid->disabled == 2) {
			FUNC3(MSG_DEBUG, "CTRL_IFACE: Cannot use "
				   "DISABLE_NETWORK with persistent P2P "
				   "group");
			return -1;
		}
	}
	FUNC4(wpa_s, ssid);

	return 0;
}