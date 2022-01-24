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
struct wpa_supplicant {int /*<<< orphan*/  ap_iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  wpas_p2p_group_idle_timeout ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*) ; 

void FUNC3(struct wpa_supplicant *wpa_s)
{
	FUNC1(wpa_s);
	if (!wpa_s->ap_iface &&
	    !FUNC0(wpas_p2p_group_idle_timeout,
					 wpa_s, NULL))
		FUNC2(wpa_s);
}