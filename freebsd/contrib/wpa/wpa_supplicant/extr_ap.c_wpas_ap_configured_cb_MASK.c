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
struct wpa_supplicant {int /*<<< orphan*/  ap_configured_cb_data; int /*<<< orphan*/  ap_configured_cb_ctx; int /*<<< orphan*/  (* ap_configured_cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_2__* ap_iface; TYPE_1__* current_ssid; int /*<<< orphan*/  assoc_freq; } ;
struct TYPE_4__ {scalar_t__ state; int /*<<< orphan*/  freq; } ;
struct TYPE_3__ {int /*<<< orphan*/  frequency; scalar_t__ acs; } ;

/* Variables and functions */
 scalar_t__ HAPD_IFACE_DISABLED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WPA_COMPLETED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *ctx)
{
	struct wpa_supplicant *wpa_s = ctx;

	FUNC2(MSG_DEBUG, "AP interface setup completed - state %s",
		   FUNC0(wpa_s->ap_iface->state));
	if (wpa_s->ap_iface->state == HAPD_IFACE_DISABLED) {
		FUNC3(wpa_s);
		return;
	}

#ifdef CONFIG_ACS
	if (wpa_s->current_ssid && wpa_s->current_ssid->acs) {
		wpa_s->assoc_freq = wpa_s->ap_iface->freq;
		wpa_s->current_ssid->frequency = wpa_s->ap_iface->freq;
	}
#endif /* CONFIG_ACS */

	FUNC4(wpa_s, WPA_COMPLETED);

	if (wpa_s->ap_configured_cb)
		wpa_s->ap_configured_cb(wpa_s->ap_configured_cb_ctx,
					wpa_s->ap_configured_cb_data);
}