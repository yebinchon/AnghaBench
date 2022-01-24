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
struct wpa_ssid {int id; struct wpa_ssid* next; } ;
struct wpa_config {struct wpa_ssid* ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpa_ssid*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_config*) ; 

int FUNC2(struct wpa_config *config, int id)
{
	struct wpa_ssid *ssid, *prev = NULL;

	ssid = config->ssid;
	while (ssid) {
		if (id == ssid->id)
			break;
		prev = ssid;
		ssid = ssid->next;
	}

	if (ssid == NULL)
		return -1;

	if (prev)
		prev->next = ssid->next;
	else
		config->ssid = ssid->next;

	FUNC1(config);
	FUNC0(ssid);
	return 0;
}