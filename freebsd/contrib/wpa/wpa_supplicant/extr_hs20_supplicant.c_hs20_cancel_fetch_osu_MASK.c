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
struct wpa_supplicant {scalar_t__ fetch_osu_icon_in_progress; scalar_t__ fetch_osu_info; scalar_t__ network_select; scalar_t__ fetch_osu_waiting_scan; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

void FUNC2(struct wpa_supplicant *wpa_s)
{
	FUNC1(MSG_DEBUG, "Cancel OSU fetch");
	FUNC0(wpa_s);
	wpa_s->fetch_osu_waiting_scan = 0;
	wpa_s->network_select = 0;
	wpa_s->fetch_osu_info = 0;
	wpa_s->fetch_osu_icon_in_progress = 0;
}