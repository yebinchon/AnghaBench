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
struct wpa_supplicant {int disconnected; struct wpa_supplicant* ssids_from_scan_req; int /*<<< orphan*/ * conf; int /*<<< orphan*/ * ifmsh; int /*<<< orphan*/ * ctrl_iface; scalar_t__ drv_priv; int /*<<< orphan*/ * received_mb_ies; int /*<<< orphan*/ * fst; struct wpa_supplicant* next; int /*<<< orphan*/  ifname; struct wpa_supplicant* parent; struct wpa_supplicant* p2pdev; struct wpa_global* global; } ;
struct wpa_global {struct wpa_supplicant* ifaces; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 int /*<<< orphan*/  WPA_EVENT_TERMINATING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct wpa_global*,struct wpa_supplicant*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC16 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC17 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC18 (struct wpa_supplicant*,char*) ; 

__attribute__((used)) static void FUNC19(struct wpa_supplicant *wpa_s,
					int notify, int terminate)
{
	struct wpa_global *global = wpa_s->global;
	struct wpa_supplicant *iface, *prev;

	if (wpa_s == wpa_s->parent)
		FUNC18(wpa_s, "*");

	iface = global->ifaces;
	while (iface) {
		if (iface->p2pdev == wpa_s)
			iface->p2pdev = iface->parent;
		if (iface == wpa_s || iface->parent != wpa_s) {
			iface = iface->next;
			continue;
		}
		FUNC8(MSG_DEBUG,
			   "Remove remaining child interface %s from parent %s",
			   iface->ifname, wpa_s->ifname);
		prev = iface;
		iface = iface->next;
		FUNC13(global, prev, terminate);
	}

	wpa_s->disconnected = 1;
	if (wpa_s->drv_priv) {
		FUNC11(wpa_s,
					      WLAN_REASON_DEAUTH_LEAVING);

		FUNC6(wpa_s, 0);
		FUNC3(wpa_s, NULL);
	}

	FUNC9(wpa_s);
	FUNC17(wpa_s);

	FUNC15(wpa_s);
	FUNC2(wpa_s);

#ifdef CONFIG_FST
	if (wpa_s->fst) {
		fst_detach(wpa_s->fst);
		wpa_s->fst = NULL;
	}
	if (wpa_s->received_mb_ies) {
		wpabuf_free(wpa_s->received_mb_ies);
		wpa_s->received_mb_ies = NULL;
	}
#endif /* CONFIG_FST */

	if (wpa_s->drv_priv)
		FUNC5(wpa_s);

	if (notify)
		FUNC16(wpa_s);

	if (terminate)
		FUNC7(wpa_s, MSG_INFO, WPA_EVENT_TERMINATING);

	if (wpa_s->ctrl_iface) {
		FUNC10(wpa_s->ctrl_iface);
		wpa_s->ctrl_iface = NULL;
	}

#ifdef CONFIG_MESH
	if (wpa_s->ifmsh) {
		wpa_supplicant_mesh_iface_deinit(wpa_s, wpa_s->ifmsh);
		wpa_s->ifmsh = NULL;
	}
#endif /* CONFIG_MESH */

	if (wpa_s->conf != NULL) {
		FUNC4(wpa_s->conf);
		wpa_s->conf = NULL;
	}

	FUNC1(wpa_s->ssids_from_scan_req);

	FUNC1(wpa_s);
}