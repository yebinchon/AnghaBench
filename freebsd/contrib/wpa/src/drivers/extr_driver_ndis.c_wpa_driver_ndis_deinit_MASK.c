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
struct wpa_driver_ndis_data {struct wpa_driver_ndis_data* adapter_desc; struct wpa_driver_ndis_data* adapter_name; scalar_t__ wzc_disabled; int /*<<< orphan*/ * ctx; scalar_t__ events; int /*<<< orphan*/  event_avail; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_driver_ndis_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_driver_ndis_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_driver_ndis_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_driver_ndis_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_driver_ndis_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_driver_ndis_data*) ; 
 int /*<<< orphan*/  wpa_driver_ndis_poll_timeout ; 
 scalar_t__ FUNC8 (struct wpa_driver_ndis_data*) ; 
 int /*<<< orphan*/  wpa_driver_ndis_scan_timeout ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_driver_ndis_data*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC11(void *priv)
{
	struct wpa_driver_ndis_data *drv = priv;

#ifdef CONFIG_NDIS_EVENTS_INTEGRATED
	if (drv->events) {
		eloop_unregister_event(drv->event_avail,
				       sizeof(drv->event_avail));
		ndis_events_deinit(drv->events);
	}
#endif /* CONFIG_NDIS_EVENTS_INTEGRATED */

#ifdef _WIN32_WCE
	ndisuio_notification_deinit(drv);
#endif /* _WIN32_WCE */

	FUNC0(wpa_driver_ndis_scan_timeout, drv, drv->ctx);
	FUNC0(wpa_driver_ndis_poll_timeout, drv, NULL);
	FUNC7(drv);
	FUNC6(drv);
	if (FUNC8(drv) < 0) {
		FUNC10(MSG_DEBUG, "NDIS: failed to disassociate and turn "
			   "radio off");
	}

	FUNC5(drv);

	if (drv->wzc_disabled)
		FUNC9(drv, 1);

#ifdef _WIN32_WCE
	os_free(drv->adapter_name);
#endif /* _WIN32_WCE */
	FUNC4(drv->adapter_desc);
	FUNC4(drv);
}