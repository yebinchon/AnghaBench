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
struct hostapd_data {int ap_pin_failures_consecutive; TYPE_2__* wps; int /*<<< orphan*/  msg_ctx; TYPE_1__* conf; } ;
struct TYPE_4__ {int /*<<< orphan*/  registrar; scalar_t__ ap_setup_locked; } ;
struct TYPE_3__ {scalar_t__ ap_setup_locked; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  WPS_EVENT_AP_SETUP_UNLOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *eloop_data, void *user_ctx)
{
	struct hostapd_data *hapd = eloop_data;

	if (hapd->conf->ap_setup_locked)
		return;
	if (hapd->ap_pin_failures_consecutive >= 10)
		return;

	FUNC1(MSG_DEBUG, "WPS: Re-enable AP PIN");
	FUNC0(hapd->msg_ctx, MSG_INFO, WPS_EVENT_AP_SETUP_UNLOCKED);
	hapd->wps->ap_setup_locked = 0;
	FUNC2(hapd->wps->registrar);
}