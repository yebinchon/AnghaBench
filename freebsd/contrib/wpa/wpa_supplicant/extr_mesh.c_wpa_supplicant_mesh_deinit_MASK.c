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
struct wpa_supplicant {int /*<<< orphan*/ * mesh_params; int /*<<< orphan*/ * mesh_rsn; int /*<<< orphan*/ * current_ssid; int /*<<< orphan*/ * ifmsh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct wpa_supplicant *wpa_s)
{
	FUNC1(wpa_s, wpa_s->ifmsh);
	wpa_s->ifmsh = NULL;
	wpa_s->current_ssid = NULL;
	FUNC0(wpa_s->mesh_rsn);
	wpa_s->mesh_rsn = NULL;
	FUNC0(wpa_s->mesh_params);
	wpa_s->mesh_params = NULL;
	/* TODO: leave mesh (stop beacon). This will happen on link down
	 * anyway, so it's not urgent */
}