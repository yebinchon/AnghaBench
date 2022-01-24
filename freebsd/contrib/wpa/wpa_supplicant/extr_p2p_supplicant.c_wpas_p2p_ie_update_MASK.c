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
struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_1__* ap_iface; } ;
struct hostapd_data {struct wpabuf* p2p_probe_resp_ie; struct wpabuf* p2p_beacon_ie; TYPE_2__* conf; } ;
struct TYPE_4__ {int p2p; } ;
struct TYPE_3__ {struct hostapd_data** bss; } ;

/* Variables and functions */
 int P2P_GROUP_OWNER ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*) ; 

__attribute__((used)) static void FUNC2(void *ctx, struct wpabuf *beacon_ies,
			       struct wpabuf *proberesp_ies)
{
	struct wpa_supplicant *wpa_s = ctx;
	if (wpa_s->ap_iface) {
		struct hostapd_data *hapd = wpa_s->ap_iface->bss[0];
		if (!(hapd->conf->p2p & P2P_GROUP_OWNER)) {
			FUNC1(beacon_ies);
			FUNC1(proberesp_ies);
			return;
		}
		if (beacon_ies) {
			FUNC1(hapd->p2p_beacon_ie);
			hapd->p2p_beacon_ie = beacon_ies;
		}
		FUNC1(hapd->p2p_probe_resp_ie);
		hapd->p2p_probe_resp_ie = proberesp_ies;
	} else {
		FUNC1(beacon_ies);
		FUNC1(proberesp_ies);
	}
	FUNC0(wpa_s);
}