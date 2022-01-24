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
struct wpa_supplicant {scalar_t__ p2p_in_provisioning; TYPE_1__* global; int /*<<< orphan*/  ap_iface; } ;
struct TYPE_2__ {scalar_t__ p2p_fail_on_wps_complete; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  wpas_p2p_group_idle_timeout ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*) ; 

__attribute__((used)) static void FUNC4(void *ctx, int idle)
{
	struct wpa_supplicant *wpa_s = ctx;
	if (!wpa_s->ap_iface)
		return;
	FUNC1(MSG_DEBUG, "P2P: GO - group %sidle", idle ? "" : "not ");
	if (idle) {
		if (wpa_s->global->p2p_fail_on_wps_complete &&
		    wpa_s->p2p_in_provisioning) {
			FUNC2(wpa_s);
			return;
		}
		FUNC3(wpa_s);
	} else
		FUNC0(wpas_p2p_group_idle_timeout, wpa_s, NULL);
}