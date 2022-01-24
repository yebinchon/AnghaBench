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
struct wpa_ssid {struct wpa_ssid* pnext; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; int /*<<< orphan*/  id; int /*<<< orphan*/  priority; } ;
struct wpa_config {int num_prio; struct wpa_ssid** pssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct wpa_config *config)
{
	int prio;
	struct wpa_ssid *ssid;

	for (prio = 0; prio < config->num_prio; prio++) {
		ssid = config->pssid[prio];
		FUNC0(MSG_DEBUG, "Priority group %d",
			   ssid->priority);
		while (ssid) {
			FUNC0(MSG_DEBUG, "   id=%d ssid='%s'",
				   ssid->id,
				   FUNC1(ssid->ssid, ssid->ssid_len));
			ssid = ssid->pnext;
		}
	}
}