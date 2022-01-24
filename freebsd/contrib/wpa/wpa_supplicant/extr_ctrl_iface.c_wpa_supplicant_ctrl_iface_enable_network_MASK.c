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
struct TYPE_2__ {scalar_t__ usec; scalar_t__ sec; } ;
struct wpa_supplicant {TYPE_1__ scan_min_time; int /*<<< orphan*/  conf; } ;
struct wpa_ssid {int disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 struct wpa_ssid* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*,struct wpa_ssid*) ; 

__attribute__((used)) static int FUNC6(
	struct wpa_supplicant *wpa_s, char *cmd)
{
	int id;
	struct wpa_ssid *ssid;

	/* cmd: "<network id>" or "all" */
	if (FUNC1(cmd, "all") == 0) {
		FUNC4(MSG_DEBUG, "CTRL_IFACE: ENABLE_NETWORK all");
		ssid = NULL;
	} else {
		id = FUNC0(cmd);
		FUNC4(MSG_DEBUG, "CTRL_IFACE: ENABLE_NETWORK id=%d", id);

		ssid = FUNC3(wpa_s->conf, id);
		if (ssid == NULL) {
			FUNC4(MSG_DEBUG, "CTRL_IFACE: Could not find "
				   "network id=%d", id);
			return -1;
		}
		if (ssid->disabled == 2) {
			FUNC4(MSG_DEBUG, "CTRL_IFACE: Cannot use "
				   "ENABLE_NETWORK with persistent P2P group");
			return -1;
		}

		if (FUNC2(cmd, " no-connect")) {
			ssid->disabled = 0;
			return 0;
		}
	}
	wpa_s->scan_min_time.sec = 0;
	wpa_s->scan_min_time.usec = 0;
	FUNC5(wpa_s, ssid);

	return 0;
}