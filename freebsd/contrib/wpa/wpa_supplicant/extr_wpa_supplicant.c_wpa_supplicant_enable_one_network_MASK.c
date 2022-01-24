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
struct wpa_supplicant {int reassociate; int /*<<< orphan*/  disconnected; int /*<<< orphan*/  current_ssid; } ;
struct wpa_ssid {int disabled; scalar_t__ owe_transition_bss_select_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,struct wpa_ssid*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,struct wpa_ssid*) ; 

__attribute__((used)) static void FUNC2(struct wpa_supplicant *wpa_s,
					      struct wpa_ssid *ssid)
{
	if (!ssid || !ssid->disabled || ssid->disabled == 2)
		return;

	ssid->disabled = 0;
	ssid->owe_transition_bss_select_count = 0;
	FUNC0(wpa_s, ssid, 1);
	FUNC1(wpa_s, ssid);

	/*
	 * Try to reassociate since there is no current configuration and a new
	 * network was made available.
	 */
	if (!wpa_s->current_ssid && !wpa_s->disconnected)
		wpa_s->reassociate = 1;
}