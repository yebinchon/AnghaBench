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
struct wpabuf {int dummy; } ;
struct wpa_supplicant {unsigned int last_scan_res_used; struct wpa_bss** last_scan_res; int /*<<< orphan*/  last_scan; struct wpa_ssid* current_ssid; } ;
struct wpa_ssid {int dummy; } ;
struct wpa_bss {int dummy; } ;
struct os_reltime {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct os_reltime*) ; 
 scalar_t__ FUNC1 (struct os_reltime*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct wpa_supplicant*,struct wpa_bss*,struct wpabuf**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (struct wpa_supplicant*,unsigned int,struct wpa_bss*,struct wpa_ssid*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct wpa_supplicant *wpa_s, struct wpabuf **buf)
{
	unsigned int i, pref = 255;
	struct os_reltime now;
	struct wpa_ssid *ssid = wpa_s->current_ssid;

	if (!ssid)
		return;

	/*
	 * TODO: Define when scan results are no longer valid for the candidate
	 * list.
	 */
	FUNC0(&now);
	if (FUNC1(&now, &wpa_s->last_scan, 10))
		return;

	FUNC4(MSG_DEBUG,
		   "WNM: Add candidate list to BSS Transition Management Response frame");
	for (i = 0; i < wpa_s->last_scan_res_used && pref; i++) {
		struct wpa_bss *bss = wpa_s->last_scan_res[i];
		int res;

		if (FUNC5(wpa_s, i, bss, ssid, 1, 0)) {
			res = FUNC2(wpa_s, bss, buf, pref--);
			if (res == -2)
				continue; /* could not build entry for BSS */
			if (res < 0)
				break; /* no more room for candidates */
			if (pref == 1)
				break;
		}
	}

	FUNC3(MSG_DEBUG,
			"WNM: BSS Transition Management Response candidate list",
			*buf);
}