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
struct wpa_supplicant {scalar_t__ wpa_state; struct wpa_supplicant* next; } ;
struct TYPE_2__ {scalar_t__ sec; } ;
struct wpa_global {struct wpa_supplicant* ifaces; TYPE_1__ suspend_time; } ;
struct os_time {int sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ WPA_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (struct os_time*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct wpa_global *global)
{
	struct os_time now;
	int slept;
	struct wpa_supplicant *wpa_s;

	if (global->suspend_time.sec == 0)
		slept = -1;
	else {
		FUNC0(&now);
		slept = now.sec - global->suspend_time.sec;
	}
	FUNC2(MSG_DEBUG, "System resume notification (slept %d seconds)",
		   slept);

	for (wpa_s = global->ifaces; wpa_s; wpa_s = wpa_s->next) {
		FUNC1(wpa_s);
		if (wpa_s->wpa_state == WPA_DISCONNECTED)
			FUNC3(wpa_s, 0, 100000);
	}
}