#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int ievent; int /*<<< orphan*/  ifname; } ;
union wpa_event_data {TYPE_1__ interface_status; } ;
struct wpa_supplicant {int interface_removed; int drv_flags; TYPE_4__* global; int /*<<< orphan*/  matched; struct wpa_supplicant* parent; int /*<<< orphan*/ * l2; TYPE_2__* conf; int /*<<< orphan*/  ifname; } ;
struct TYPE_7__ {int /*<<< orphan*/  conf_p2p_dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  ifaces; struct wpa_supplicant* p2p_init_wpa_s; int /*<<< orphan*/  p2p; TYPE_3__ params; int /*<<< orphan*/  p2p_disabled; } ;
struct TYPE_6__ {int /*<<< orphan*/  p2p_disabled; } ;

/* Variables and functions */
#define  EVENT_INTERFACE_ADDED 129 
#define  EVENT_INTERFACE_REMOVED 128 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int WPA_DRIVER_FLAGS_DEDICATED_P2P_DEVICE ; 
 int /*<<< orphan*/  WPA_INTERFACE_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct wpa_supplicant *wpa_s,
				      union wpa_event_data *data)
{
	if (FUNC3(wpa_s->ifname, data->interface_status.ifname) != 0)
		return;

	switch (data->interface_status.ievent) {
	case EVENT_INTERFACE_ADDED:
		if (!wpa_s->interface_removed)
			break;
		wpa_s->interface_removed = 0;
		FUNC4(wpa_s, MSG_DEBUG, "Configured interface was added");
		if (FUNC7(wpa_s) < 0) {
			FUNC5(wpa_s, MSG_INFO, "Failed to initialize the "
				"driver after interface was added");
		}

#ifdef CONFIG_P2P
		if (!wpa_s->global->p2p &&
		    !wpa_s->global->p2p_disabled &&
		    !wpa_s->conf->p2p_disabled &&
		    (wpa_s->drv_flags &
		     WPA_DRIVER_FLAGS_DEDICATED_P2P_DEVICE) &&
		    wpas_p2p_add_p2pdev_interface(
			    wpa_s, wpa_s->global->params.conf_p2p_dev) < 0) {
			wpa_printf(MSG_INFO,
				   "P2P: Failed to enable P2P Device interface");
			/* Try to continue without. P2P will be disabled. */
		}
#endif /* CONFIG_P2P */

		break;
	case EVENT_INTERFACE_REMOVED:
		FUNC4(wpa_s, MSG_DEBUG, "Configured interface was removed");
		wpa_s->interface_removed = 1;
		FUNC8(wpa_s);
		FUNC10(wpa_s, WPA_INTERFACE_DISABLED);
		FUNC2(wpa_s->l2);
		wpa_s->l2 = NULL;

#ifdef CONFIG_P2P
		if (wpa_s->global->p2p &&
		    wpa_s->global->p2p_init_wpa_s->parent == wpa_s &&
		    (wpa_s->drv_flags &
		     WPA_DRIVER_FLAGS_DEDICATED_P2P_DEVICE)) {
			wpa_dbg(wpa_s, MSG_DEBUG,
				"Removing P2P Device interface");
			wpa_supplicant_remove_iface(
				wpa_s->global, wpa_s->global->p2p_init_wpa_s,
				0);
			wpa_s->global->p2p_init_wpa_s = NULL;
		}
#endif /* CONFIG_P2P */

#ifdef CONFIG_MATCH_IFACE
		if (wpa_s->matched) {
			wpa_supplicant_remove_iface(wpa_s->global, wpa_s, 0);
			break;
		}
#endif /* CONFIG_MATCH_IFACE */

#ifdef CONFIG_TERMINATE_ONLASTIF
		/* check if last interface */
		if (!any_interfaces(wpa_s->global->ifaces))
			eloop_terminate();
#endif /* CONFIG_TERMINATE_ONLASTIF */
		break;
	}
}