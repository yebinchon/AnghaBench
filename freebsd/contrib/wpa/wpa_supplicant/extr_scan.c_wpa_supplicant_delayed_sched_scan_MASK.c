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
struct wpa_supplicant {int /*<<< orphan*/  sched_scan_supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wpa_supplicant_delayed_sched_scan_timeout ; 

int FUNC1(struct wpa_supplicant *wpa_s,
				      int sec, int usec)
{
	if (!wpa_s->sched_scan_supported)
		return -1;

	FUNC0(sec, usec,
			       wpa_supplicant_delayed_sched_scan_timeout,
			       wpa_s, NULL);

	return 0;
}