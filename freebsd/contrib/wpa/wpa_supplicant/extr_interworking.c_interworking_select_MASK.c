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
struct wpa_supplicant {int network_select; int auto_select; int* manual_scan_freqs; scalar_t__ known_wps_freq; scalar_t__ after_wps; int /*<<< orphan*/  scan_req; scalar_t__ normal_scans; int /*<<< orphan*/  scan_res_handler; scalar_t__ fetch_osu_info; scalar_t__ fetch_all_anqp; scalar_t__ auto_network_select; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANUAL_SCAN_REQ ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  interworking_scan_res_handler ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct wpa_supplicant *wpa_s, int auto_select,
			int *freqs)
{
	FUNC0(wpa_s);
	wpa_s->network_select = 1;
	wpa_s->auto_network_select = 0;
	wpa_s->auto_select = !!auto_select;
	wpa_s->fetch_all_anqp = 0;
	wpa_s->fetch_osu_info = 0;
	FUNC2(wpa_s, MSG_DEBUG,
		"Interworking: Start scan for network selection");
	wpa_s->scan_res_handler = interworking_scan_res_handler;
	wpa_s->normal_scans = 0;
	wpa_s->scan_req = MANUAL_SCAN_REQ;
	FUNC1(wpa_s->manual_scan_freqs);
	wpa_s->manual_scan_freqs = freqs;
	wpa_s->after_wps = 0;
	wpa_s->known_wps_freq = 0;
	FUNC3(wpa_s, 0, 0);

	return 0;
}