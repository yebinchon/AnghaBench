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
struct wpa_ssid {struct wpa_ssid* next; int /*<<< orphan*/ * pnext; } ;
struct wpa_config {struct wpa_ssid* ssid; scalar_t__ num_prio; int /*<<< orphan*/ * pssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct wpa_config*,struct wpa_ssid*) ; 

int FUNC2(struct wpa_config *config)
{
	struct wpa_ssid *ssid;
	int ret = 0;

	FUNC0(config->pssid);
	config->pssid = NULL;
	config->num_prio = 0;

	ssid = config->ssid;
	while (ssid) {
		ssid->pnext = NULL;
		if (FUNC1(config, ssid) < 0)
			ret = -1;
		ssid = ssid->next;
	}

	return ret;
}