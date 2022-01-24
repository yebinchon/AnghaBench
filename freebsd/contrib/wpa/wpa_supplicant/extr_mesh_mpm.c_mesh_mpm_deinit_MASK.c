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
struct wpa_supplicant {int dummy; } ;
struct hostapd_iface {struct hostapd_data** bss; } ;
struct hostapd_data {scalar_t__ num_plinks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*,int /*<<< orphan*/ ,struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_data*) ; 
 int /*<<< orphan*/  mesh_mpm_plink_close ; 
 int /*<<< orphan*/  peer_add_timer ; 

void FUNC3(struct wpa_supplicant *wpa_s, struct hostapd_iface *ifmsh)
{
	struct hostapd_data *hapd = ifmsh->bss[0];

	/* notify peers we're leaving */
	FUNC0(hapd, mesh_mpm_plink_close, wpa_s);

	hapd->num_plinks = 0;
	FUNC2(hapd);
	FUNC1(peer_add_timer, wpa_s, NULL);
}