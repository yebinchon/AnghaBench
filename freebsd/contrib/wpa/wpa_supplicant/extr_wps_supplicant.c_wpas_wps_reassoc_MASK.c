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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_supplicant {scalar_t__ wps_run; int after_wps; int known_wps_freq; int wps_freq; int reassociate; scalar_t__ blacklist_cleared; scalar_t__ wps_success; scalar_t__ normal_scans; scalar_t__ scan_runs; scalar_t__ disconnected; } ;
struct wpa_ssid {int dummy; } ;
struct wpa_bss {int freq; } ;

/* Variables and functions */
 struct wpa_bss* FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,struct wpa_ssid*) ; 

__attribute__((used)) static void FUNC4(struct wpa_supplicant *wpa_s,
			     struct wpa_ssid *selected, const u8 *bssid,
			     int freq)
{
	struct wpa_bss *bss;

	wpa_s->wps_run++;
	if (wpa_s->wps_run == 0)
		wpa_s->wps_run++;
	wpa_s->after_wps = 0;
	wpa_s->known_wps_freq = 0;
	if (freq) {
		wpa_s->after_wps = 5;
		wpa_s->wps_freq = freq;
	} else if (bssid) {
		bss = FUNC0(wpa_s, bssid);
		if (bss && bss->freq > 0) {
			wpa_s->known_wps_freq = 1;
			wpa_s->wps_freq = bss->freq;
		}
	}

	FUNC3(wpa_s, selected);

	wpa_s->disconnected = 0;
	wpa_s->reassociate = 1;
	wpa_s->scan_runs = 0;
	wpa_s->normal_scans = 0;
	wpa_s->wps_success = 0;
	wpa_s->blacklist_cleared = 0;

	FUNC1(wpa_s);
	FUNC2(wpa_s, 0, 0);
}