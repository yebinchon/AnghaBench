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
struct wpa_supplicant {scalar_t__ p2p_group_interface; char const* ifname; struct wpa_supplicant* next; TYPE_1__* current_ssid; struct wpa_global* global; } ;
struct wpa_global {struct wpa_supplicant* ifaces; } ;
struct TYPE_2__ {scalar_t__ p2p_group; } ;

/* Variables and functions */
 scalar_t__ NOT_P2P_GROUP_INTERFACE ; 
 scalar_t__ FUNC0 (char const*,char const*) ; 
 int FUNC1 (struct wpa_supplicant*,struct wpa_supplicant*) ; 

int FUNC2(struct wpa_supplicant *wpa_s, const char *ifname)
{
	struct wpa_global *global = wpa_s->global;
	struct wpa_supplicant *calling_wpa_s = wpa_s;

	if (FUNC0(ifname, "*") == 0) {
		struct wpa_supplicant *prev;
		wpa_s = global->ifaces;
		while (wpa_s) {
			prev = wpa_s;
			wpa_s = wpa_s->next;
			if (prev->p2p_group_interface !=
			    NOT_P2P_GROUP_INTERFACE ||
			    (prev->current_ssid &&
			     prev->current_ssid->p2p_group))
				FUNC1(prev, calling_wpa_s);
		}
		return 0;
	}

	for (wpa_s = global->ifaces; wpa_s; wpa_s = wpa_s->next) {
		if (FUNC0(wpa_s->ifname, ifname) == 0)
			break;
	}

	return FUNC1(wpa_s, calling_wpa_s);
}