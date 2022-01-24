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
struct wpa_supplicant {int fetch_all_anqp; int fetch_osu_info; scalar_t__ fetch_osu_icon_in_progress; scalar_t__ network_select; int /*<<< orphan*/  fetch_osu_waiting_scan; } ;
struct wpa_scan_results {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(struct wpa_supplicant *wpa_s,
				      struct wpa_scan_results *scan_res)
{
	FUNC1(MSG_DEBUG, "OSU provisioning fetch scan completed");
	if (!wpa_s->fetch_osu_waiting_scan) {
		FUNC1(MSG_DEBUG, "OSU fetch have been canceled");
		return;
	}
	wpa_s->network_select = 0;
	wpa_s->fetch_all_anqp = 1;
	wpa_s->fetch_osu_info = 1;
	wpa_s->fetch_osu_icon_in_progress = 0;

	FUNC0(wpa_s);
}