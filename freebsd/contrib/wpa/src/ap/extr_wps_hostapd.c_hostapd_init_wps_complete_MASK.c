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
struct wps_context {int /*<<< orphan*/  registrar; } ;
struct hostapd_data {struct wps_context* wps; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct wps_context*) ; 
 scalar_t__ FUNC1 (struct hostapd_data*,struct wps_context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct hostapd_data *hapd)
{
	struct wps_context *wps = hapd->wps;

	if (wps == NULL)
		return 0;

#ifdef CONFIG_WPS_UPNP
	if (hostapd_wps_upnp_init(hapd, wps) < 0) {
		wpa_printf(MSG_ERROR, "Failed to initialize WPS UPnP");
		wps_registrar_deinit(wps->registrar);
		hostapd_free_wps(wps);
		hapd->wps = NULL;
		return -1;
	}
#endif /* CONFIG_WPS_UPNP */

	return 0;
}