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
struct wpa_supplicant {int* select_network_scan_freqs; TYPE_1__ scan_min_time; int /*<<< orphan*/  conf; } ;
struct wpa_ssid {int disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (char*) ; 
 int* FUNC1 (struct wpa_supplicant*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 char* FUNC4 (char*,char*) ; 
 struct wpa_ssid* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*,struct wpa_ssid*) ; 

__attribute__((used)) static int FUNC8(
	struct wpa_supplicant *wpa_s, char *cmd)
{
	int id;
	struct wpa_ssid *ssid;
	char *pos;

	/* cmd: "<network id>" or "any" */
	if (FUNC3(cmd, "any", 3) == 0) {
		FUNC6(MSG_DEBUG, "CTRL_IFACE: SELECT_NETWORK any");
		ssid = NULL;
	} else {
		id = FUNC0(cmd);
		FUNC6(MSG_DEBUG, "CTRL_IFACE: SELECT_NETWORK id=%d", id);

		ssid = FUNC5(wpa_s->conf, id);
		if (ssid == NULL) {
			FUNC6(MSG_DEBUG, "CTRL_IFACE: Could not find "
				   "network id=%d", id);
			return -1;
		}
		if (ssid->disabled == 2) {
			FUNC6(MSG_DEBUG, "CTRL_IFACE: Cannot use "
				   "SELECT_NETWORK with persistent P2P group");
			return -1;
		}
	}

	pos = FUNC4(cmd, " freq=");
	if (pos) {
		int *freqs = FUNC1(wpa_s, pos + 6);
		if (freqs) {
			FUNC2(wpa_s->select_network_scan_freqs);
			wpa_s->select_network_scan_freqs = freqs;
		}
	}

	wpa_s->scan_min_time.sec = 0;
	wpa_s->scan_min_time.usec = 0;
	FUNC7(wpa_s, ssid);

	return 0;
}