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
struct hostapd_data {TYPE_2__* wps; int /*<<< orphan*/  msg_ctx; TYPE_1__* conf; scalar_t__ ap_pin_failures_consecutive; scalar_t__ ap_pin_failures; } ;
struct TYPE_4__ {int /*<<< orphan*/  registrar; scalar_t__ ap_setup_locked; } ;
struct TYPE_3__ {scalar_t__ ap_setup_locked; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  WPS_EVENT_AP_SETUP_UNLOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hostapd_wps_ap_pin_timeout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct hostapd_data *hapd, int timeout)
{
	FUNC3(MSG_DEBUG, "WPS: Enabling AP PIN (timeout=%d)", timeout);
	hapd->ap_pin_failures = 0;
	hapd->ap_pin_failures_consecutive = 0;
	hapd->conf->ap_setup_locked = 0;
	if (hapd->wps->ap_setup_locked) {
		FUNC2(hapd->msg_ctx, MSG_INFO, WPS_EVENT_AP_SETUP_UNLOCKED);
		hapd->wps->ap_setup_locked = 0;
		FUNC4(hapd->wps->registrar);
	}
	FUNC0(hostapd_wps_ap_pin_timeout, hapd, NULL);
	if (timeout > 0)
		FUNC1(timeout, 0,
				       hostapd_wps_ap_pin_timeout, hapd, NULL);
}