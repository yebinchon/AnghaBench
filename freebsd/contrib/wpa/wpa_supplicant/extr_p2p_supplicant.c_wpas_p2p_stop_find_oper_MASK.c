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
struct wpa_supplicant {scalar_t__ scan_res_handler; TYPE_1__* global; scalar_t__ p2p_long_listen; } ;
struct TYPE_2__ {scalar_t__ p2p; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  wpas_p2p_join_scan ; 
 int /*<<< orphan*/  wpas_p2p_long_listen_timeout ; 
 scalar_t__ wpas_p2p_scan_res_handler ; 
 scalar_t__ wpas_p2p_scan_res_ignore_search ; 

__attribute__((used)) static void FUNC4(struct wpa_supplicant *wpa_s)
{
	FUNC3(wpa_s);
	wpa_s->p2p_long_listen = 0;
	FUNC0(wpas_p2p_long_listen_timeout, wpa_s, NULL);
	FUNC0(wpas_p2p_join_scan, wpa_s, NULL);

	if (wpa_s->global->p2p)
		FUNC1(wpa_s->global->p2p);

	if (wpa_s->scan_res_handler == wpas_p2p_scan_res_handler) {
		FUNC2(MSG_DEBUG,
			   "P2P: Do not consider the scan results after stop_find");
		wpa_s->scan_res_handler = wpas_p2p_scan_res_ignore_search;
	}
}