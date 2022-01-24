#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wps_event_pwd_auth_fail {int /*<<< orphan*/  enrollee; } ;
struct hostapd_data {int ap_pin_failures; int ap_pin_failures_consecutive; int ap_pin_lockout_time; TYPE_2__* conf; TYPE_1__* wps; int /*<<< orphan*/  msg_ctx; } ;
struct TYPE_4__ {int /*<<< orphan*/  ap_setup_locked; int /*<<< orphan*/ * ap_pin; } ;
struct TYPE_3__ {int ap_setup_locked; int /*<<< orphan*/  registrar; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  WPS_EVENT_AP_SETUP_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hostapd_wps_reenable_ap_pin ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hostapd_data *hapd, void *ctx)
{
	struct wps_event_pwd_auth_fail *data = ctx;

	if (!data->enrollee || hapd->conf->ap_pin == NULL || hapd->wps == NULL)
		return 0;

	/*
	 * Registrar failed to prove its knowledge of the AP PIN. Lock AP setup
	 * for some time if this happens multiple times to slow down brute
	 * force attacks.
	 */
	hapd->ap_pin_failures++;
	hapd->ap_pin_failures_consecutive++;
	FUNC3(MSG_DEBUG, "WPS: AP PIN authentication failure number %u "
		   "(%u consecutive)",
		   hapd->ap_pin_failures, hapd->ap_pin_failures_consecutive);
	if (hapd->ap_pin_failures < 3)
		return 0;

	FUNC2(hapd->msg_ctx, MSG_INFO, WPS_EVENT_AP_SETUP_LOCKED);
	hapd->wps->ap_setup_locked = 1;

	FUNC4(hapd->wps->registrar);

	if (!hapd->conf->ap_setup_locked &&
	    hapd->ap_pin_failures_consecutive >= 10) {
		/*
		 * In indefinite lockdown - disable automatic AP PIN
		 * reenablement.
		 */
		FUNC0(hostapd_wps_reenable_ap_pin, hapd, NULL);
		FUNC3(MSG_DEBUG, "WPS: AP PIN disabled indefinitely");
	} else if (!hapd->conf->ap_setup_locked) {
		if (hapd->ap_pin_lockout_time == 0)
			hapd->ap_pin_lockout_time = 60;
		else if (hapd->ap_pin_lockout_time < 365 * 24 * 60 * 60 &&
			 (hapd->ap_pin_failures % 3) == 0)
			hapd->ap_pin_lockout_time *= 2;

		FUNC3(MSG_DEBUG, "WPS: Disable AP PIN for %u seconds",
			   hapd->ap_pin_lockout_time);
		FUNC0(hostapd_wps_reenable_ap_pin, hapd, NULL);
		FUNC1(hapd->ap_pin_lockout_time, 0,
				       hostapd_wps_reenable_ap_pin, hapd,
				       NULL);
	}

	return 0;
}