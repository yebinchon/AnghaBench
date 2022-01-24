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
struct wpa_supplicant {int reassociate; scalar_t__ reattach; scalar_t__ last_owe_group; scalar_t__ disconnected; scalar_t__ extra_blacklist_count; int /*<<< orphan*/  scan_req; scalar_t__ normal_scans; } ;

/* Variables and functions */
 int /*<<< orphan*/  NORMAL_SCAN_REQ ; 
 int FUNC0 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct wpa_supplicant *wpa_s)
{
	wpa_s->normal_scans = 0;
	wpa_s->scan_req = NORMAL_SCAN_REQ;
	FUNC1(wpa_s);
	wpa_s->extra_blacklist_count = 0;
	wpa_s->disconnected = 0;
	wpa_s->reassociate = 1;
	wpa_s->last_owe_group = 0;

	if (FUNC0(wpa_s) != 1)
		FUNC2(wpa_s, 0, 0);
	else
		wpa_s->reattach = 0;
}