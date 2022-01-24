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
struct wpa_supplicant {int sched_scan_stop_req; scalar_t__ sched_scanning; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  wpa_supplicant_sched_scan_timeout ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*) ; 

void FUNC3(struct wpa_supplicant *wpa_s)
{
	if (!wpa_s->sched_scanning)
		return;

	if (wpa_s->sched_scanning)
		wpa_s->sched_scan_stop_req = 1;

	FUNC1(wpa_s, MSG_DEBUG, "Cancelling sched scan");
	FUNC0(wpa_supplicant_sched_scan_timeout, wpa_s, NULL);
	FUNC2(wpa_s);
}