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
struct wpa_supplicant {scalar_t__ p2p_group_interface; scalar_t__ ap_iface; struct wpa_supplicant* next; } ;
struct wpa_global {int /*<<< orphan*/ * p2p_init_wpa_s; int /*<<< orphan*/ * p2p; struct wpa_supplicant* ifaces; } ;

/* Variables and functions */
 scalar_t__ NOT_P2P_GROUP_INTERFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct wpa_global *global)
{
	struct wpa_supplicant *wpa_s, *tmp;

	wpa_s = global->ifaces;

	FUNC3(global->p2p_init_wpa_s);

	/* Remove remaining P2P group interfaces */
	while (wpa_s && wpa_s->p2p_group_interface != NOT_P2P_GROUP_INTERFACE)
		wpa_s = wpa_s->next;
	while (wpa_s) {
		tmp = global->ifaces;
		while (tmp &&
		       (tmp == wpa_s ||
			tmp->p2p_group_interface == NOT_P2P_GROUP_INTERFACE)) {
			tmp = tmp->next;
		}
		if (tmp == NULL)
			break;
		/* Disconnect from the P2P group and deinit the interface */
		FUNC1(tmp);
	}

	/*
	 * Deinit GO data on any possibly remaining interface (if main
	 * interface is used as GO).
	 */
	for (wpa_s = global->ifaces; wpa_s; wpa_s = wpa_s->next) {
		if (wpa_s->ap_iface)
			FUNC2(wpa_s);
	}

	FUNC0(global->p2p);
	global->p2p = NULL;
	global->p2p_init_wpa_s = NULL;
}