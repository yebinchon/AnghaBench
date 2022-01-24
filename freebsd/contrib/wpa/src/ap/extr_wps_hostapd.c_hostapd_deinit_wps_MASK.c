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
struct hostapd_data {TYPE_1__* wps; struct hostapd_data* iface; } ;
struct TYPE_2__ {int /*<<< orphan*/  upnp_msgs; int /*<<< orphan*/  registrar; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  hostapd_wps_ap_pin_timeout ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_data*,int) ; 
 int /*<<< orphan*/  hostapd_wps_reenable_ap_pin ; 
 int /*<<< orphan*/  FUNC3 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wps_reload_config ; 

void FUNC6(struct hostapd_data *hapd)
{
	FUNC0(hostapd_wps_reenable_ap_pin, hapd, NULL);
	FUNC0(hostapd_wps_ap_pin_timeout, hapd, NULL);
	FUNC0(wps_reload_config, hapd->iface, NULL);
	if (hapd->wps == NULL) {
		FUNC2(hapd, 1);
		return;
	}
#ifdef CONFIG_WPS_UPNP
	hostapd_wps_upnp_deinit(hapd);
#endif /* CONFIG_WPS_UPNP */
	FUNC5(hapd->wps->registrar);
	FUNC4(hapd->wps->upnp_msgs);
	FUNC1(hapd->wps);
	hapd->wps = NULL;
	FUNC2(hapd, 1);
}