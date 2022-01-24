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
struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_driver_capa {int dummy; } ;
struct TYPE_2__ {int changed_parameters; char* country; char* wowlan_triggers; int /*<<< orphan*/  sched_scan_plans; } ;

/* Variables and functions */
 int CFG_CHANGED_COUNTRY ; 
 int CFG_CHANGED_DISABLE_BTM ; 
 int CFG_CHANGED_EXT_PW_BACKEND ; 
 int CFG_CHANGED_SCHED_SCAN_PLANS ; 
 int CFG_CHANGED_WOWLAN_TRIGGERS ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int FUNC0 (struct wpa_supplicant*,struct wpa_driver_capa*) ; 
 scalar_t__ FUNC1 (struct wpa_supplicant*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct wpa_supplicant*,struct wpa_driver_capa*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_supplicant*) ; 

void FUNC9(struct wpa_supplicant *wpa_s)
{
	if ((wpa_s->conf->changed_parameters & CFG_CHANGED_COUNTRY) &&
	    wpa_s->conf->country[0] && wpa_s->conf->country[1]) {
		char country[3];
		country[0] = wpa_s->conf->country[0];
		country[1] = wpa_s->conf->country[1];
		country[2] = '\0';
		if (FUNC1(wpa_s, country) < 0) {
			FUNC2(MSG_ERROR, "Failed to set country code "
				   "'%s'", country);
		}
	}

	if (wpa_s->conf->changed_parameters & CFG_CHANGED_EXT_PW_BACKEND)
		FUNC4(wpa_s);

	if (wpa_s->conf->changed_parameters & CFG_CHANGED_SCHED_SCAN_PLANS)
		FUNC6(wpa_s, wpa_s->conf->sched_scan_plans);

	if (wpa_s->conf->changed_parameters & CFG_CHANGED_WOWLAN_TRIGGERS) {
		struct wpa_driver_capa capa;
		int res = FUNC0(wpa_s, &capa);

		if (res == 0 && FUNC7(wpa_s, &capa) < 0)
			FUNC2(MSG_ERROR,
				   "Failed to update wowlan_triggers to '%s'",
				   wpa_s->conf->wowlan_triggers);
	}

	if (wpa_s->conf->changed_parameters & CFG_CHANGED_DISABLE_BTM)
		FUNC3(wpa_s);

#ifdef CONFIG_WPS
	wpas_wps_update_config(wpa_s);
#endif /* CONFIG_WPS */
	FUNC5(wpa_s);
	wpa_s->conf->changed_parameters = 0;
}