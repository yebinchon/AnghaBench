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
struct wpa_supplicant {int dummy; } ;
struct wpa_ssid_value {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 char* FUNC0 (char*,char) ; 
 char* FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,struct wpa_ssid_value*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  wpas_ctrl_neighbor_rep_cb ; 
 int FUNC4 (struct wpa_supplicant*,struct wpa_ssid_value*,int,int,int /*<<< orphan*/ ,struct wpa_supplicant*) ; 

__attribute__((used)) static int FUNC5(struct wpa_supplicant *wpa_s,
					     char *cmd)
{
	struct wpa_ssid_value ssid, *ssid_p = NULL;
	int ret, lci = 0, civic = 0;
	char *ssid_s;

	ssid_s = FUNC1(cmd, "ssid=");
	if (ssid_s) {
		if (FUNC2(ssid_s + 5, &ssid)) {
			FUNC3(MSG_ERROR,
				   "CTRL: Send Neighbor Report: bad SSID");
			return -1;
		}

		ssid_p = &ssid;

		/*
		 * Move cmd after the SSID text that may include "lci" or
		 * "civic".
		 */
		cmd = FUNC0(ssid_s + 6, ssid_s[5] == '"' ? '"' : ' ');
		if (cmd)
			cmd++;

	}

	if (cmd && FUNC1(cmd, "lci"))
		lci = 1;

	if (cmd && FUNC1(cmd, "civic"))
		civic = 1;

	ret = FUNC4(wpa_s, ssid_p, lci, civic,
						 wpas_ctrl_neighbor_rep_cb,
						 wpa_s);

	return ret;
}