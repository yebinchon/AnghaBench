#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wpa_driver_ops {int dummy; } ;
struct hostapd_iface {int driver_ap_teardown; int drv_flags; size_t num_bss; struct hostapd_data** bss; TYPE_2__* conf; } ;
struct hostapd_data {TYPE_3__* conf; int /*<<< orphan*/ * drv_priv; struct wpa_driver_ops* driver; int /*<<< orphan*/  msg_ctx; } ;
struct TYPE_6__ {int /*<<< orphan*/  iface; } ;
struct TYPE_5__ {TYPE_1__** bss; } ;
struct TYPE_4__ {int /*<<< orphan*/  iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  AP_EVENT_DISABLED ; 
 int /*<<< orphan*/  HAPD_IFACE_DISABLED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int WPA_DRIVER_FLAGS_AP_TEARDOWN_SUPPORT ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_iface*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_driver_ops const*,void*,struct hostapd_iface*) ; 
 int /*<<< orphan*/  FUNC4 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct hostapd_iface*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC8(struct hostapd_iface *hapd_iface)
{
	size_t j;
	const struct wpa_driver_ops *driver;
	void *drv_priv;

	if (hapd_iface == NULL)
		return -1;

	if (hapd_iface->bss[0]->drv_priv == NULL) {
		FUNC7(MSG_INFO, "Interface %s already disabled",
			   hapd_iface->conf->bss[0]->iface);
		return -1;
	}

	FUNC6(hapd_iface->bss[0]->msg_ctx, MSG_INFO, AP_EVENT_DISABLED);
	driver = hapd_iface->bss[0]->driver;
	drv_priv = hapd_iface->bss[0]->drv_priv;

	hapd_iface->driver_ap_teardown =
		!!(hapd_iface->drv_flags &
		   WPA_DRIVER_FLAGS_AP_TEARDOWN_SUPPORT);

#ifdef NEED_AP_MLME
	for (j = 0; j < hapd_iface->num_bss; j++)
		hostapd_cleanup_cs_params(hapd_iface->bss[j]);
#endif /* NEED_AP_MLME */

	/* same as hostapd_interface_deinit without deinitializing ctrl-iface */
	for (j = 0; j < hapd_iface->num_bss; j++) {
		struct hostapd_data *hapd = hapd_iface->bss[j];
		FUNC0(hapd);
		FUNC4(hapd);
	}

	FUNC3(driver, drv_priv, hapd_iface);

	/* From hostapd_cleanup_iface: These were initialized in
	 * hostapd_setup_interface and hostapd_setup_interface_complete
	 */
	FUNC2(hapd_iface);

	FUNC7(MSG_DEBUG, "Interface %s disabled",
		   hapd_iface->bss[0]->conf->iface);
	FUNC5(hapd_iface, HAPD_IFACE_DISABLED);
	return 0;
}