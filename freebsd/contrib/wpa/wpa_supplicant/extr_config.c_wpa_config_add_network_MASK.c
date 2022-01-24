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
struct wpa_ssid {int id; struct wpa_ssid* next; int /*<<< orphan*/  psk_list; } ;
struct wpa_config {struct wpa_ssid* ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct wpa_ssid* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_config*) ; 

struct wpa_ssid * FUNC3(struct wpa_config *config)
{
	int id;
	struct wpa_ssid *ssid, *last = NULL;

	id = -1;
	ssid = config->ssid;
	while (ssid) {
		if (ssid->id > id)
			id = ssid->id;
		last = ssid;
		ssid = ssid->next;
	}
	id++;

	ssid = FUNC1(sizeof(*ssid));
	if (ssid == NULL)
		return NULL;
	ssid->id = id;
	FUNC0(&ssid->psk_list);
	if (last)
		last->next = ssid;
	else
		config->ssid = ssid;

	FUNC2(config);

	return ssid;
}