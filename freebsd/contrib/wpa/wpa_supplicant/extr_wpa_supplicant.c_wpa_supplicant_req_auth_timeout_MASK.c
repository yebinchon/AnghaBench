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
struct wpa_supplicant {int drv_flags; int last_auth_timeout_sec; TYPE_1__* conf; } ;
struct TYPE_2__ {scalar_t__ ap_scan; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WPA_DRIVER_FLAGS_WIRED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  wpa_supplicant_timeout ; 

void FUNC3(struct wpa_supplicant *wpa_s,
				     int sec, int usec)
{
	if (wpa_s->conf->ap_scan == 0 &&
	    (wpa_s->drv_flags & WPA_DRIVER_FLAGS_WIRED))
		return;

	FUNC2(wpa_s, MSG_DEBUG, "Setting authentication timeout: %d sec "
		"%d usec", sec, usec);
	FUNC0(wpa_supplicant_timeout, wpa_s, NULL);
	wpa_s->last_auth_timeout_sec = sec;
	FUNC1(sec, usec, wpa_supplicant_timeout, wpa_s, NULL);
}