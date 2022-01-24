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
struct TYPE_2__ {scalar_t__ prev_bssid_set; } ;
struct wpa_supplicant {int disconnected; scalar_t__ reassociate; TYPE_1__ sme; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wpas_network_reenabled ; 

void FUNC5(struct wpa_supplicant *wpa_s)
{
#ifdef CONFIG_SME
	wpa_s->sme.prev_bssid_set = 0;
#endif /* CONFIG_SME */
	wpa_s->reassociate = 0;
	wpa_s->disconnected = 1;
	FUNC3(wpa_s);
	FUNC2(wpa_s);
	FUNC4(wpa_s, WLAN_REASON_DEAUTH_LEAVING);
	FUNC0(wpas_network_reenabled, wpa_s, NULL);
	FUNC1(wpa_s, "connect", 0);
	FUNC1(wpa_s, "sme-connect", 0);
}