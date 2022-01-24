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
struct wpa_supplicant {struct wpa_supplicant* next; } ;
struct wpa_global {struct wpa_supplicant* ifaces; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_global*) ; 

__attribute__((used)) static void FUNC5(int sig, void *signal_ctx)
{
	struct wpa_global *global = signal_ctx;
	struct wpa_supplicant *wpa_s;
	for (wpa_s = global->ifaces; wpa_s; wpa_s = wpa_s->next) {
		FUNC0(wpa_s, MSG_DEBUG, "Signal %d received - reconfiguring",
			sig);
		if (FUNC3(wpa_s) < 0) {
			FUNC4(global);
		}
	}

	if (FUNC1() < 0) {
		/* Ignore errors since we cannot really do much to fix this */
		FUNC2(MSG_DEBUG, "Could not reopen debug log file");
	}
}