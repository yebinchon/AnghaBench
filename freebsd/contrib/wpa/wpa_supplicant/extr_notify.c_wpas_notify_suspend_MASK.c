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
struct wpa_global {struct wpa_supplicant* ifaces; int /*<<< orphan*/  suspend_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void FUNC3(struct wpa_global *global)
{
	struct wpa_supplicant *wpa_s;

	FUNC0(&global->suspend_time);
	FUNC2(MSG_DEBUG, "System suspend notification");
	for (wpa_s = global->ifaces; wpa_s; wpa_s = wpa_s->next)
		FUNC1(wpa_s);
}