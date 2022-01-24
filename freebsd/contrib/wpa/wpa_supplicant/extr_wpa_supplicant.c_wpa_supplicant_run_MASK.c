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
struct wpa_supplicant {scalar_t__ ctrl_iface; int /*<<< orphan*/  p2p_mgmt; struct wpa_supplicant* next; } ;
struct TYPE_2__ {scalar_t__ wait_for_monitor; int /*<<< orphan*/  pid_file; scalar_t__ daemonize; } ;
struct wpa_global {struct wpa_supplicant* ifaces; TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_global*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wpa_global*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct wpa_global*) ; 
 int /*<<< orphan*/  wpa_supplicant_reconfig ; 
 int /*<<< orphan*/  wpa_supplicant_terminate ; 

int FUNC7(struct wpa_global *global)
{
	struct wpa_supplicant *wpa_s;

	if (global->params.daemonize &&
	    (FUNC5(global->params.pid_file) ||
	     FUNC3()))
		return -1;

#ifdef CONFIG_MATCH_IFACE
	if (wpa_supplicant_match_existing(global))
		return -1;
#endif

	if (global->params.wait_for_monitor) {
		for (wpa_s = global->ifaces; wpa_s; wpa_s = wpa_s->next)
			if (wpa_s->ctrl_iface && !wpa_s->p2p_mgmt)
				FUNC4(
					wpa_s->ctrl_iface);
	}

	FUNC1(wpa_supplicant_terminate, global);
	FUNC0(wpa_supplicant_reconfig, global);

	FUNC2();

	return 0;
}