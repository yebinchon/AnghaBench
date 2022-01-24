#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hostapd_iface {int driver_ap_teardown; int drv_flags; TYPE_2__* conf; } ;
struct hapd_interfaces {size_t count; struct hostapd_iface** iface; } ;
struct TYPE_4__ {size_t num_bss; TYPE_1__** bss; } ;
struct TYPE_3__ {int /*<<< orphan*/  iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int WPA_DRIVER_FLAGS_AP_TEARDOWN_SUPPORT ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_iface*) ; 
 int FUNC1 (struct hostapd_iface*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 

int FUNC4(struct hapd_interfaces *interfaces, char *buf)
{
	struct hostapd_iface *hapd_iface;
	size_t i, j, k = 0;

	for (i = 0; i < interfaces->count; i++) {
		hapd_iface = interfaces->iface[i];
		if (hapd_iface == NULL)
			return -1;
		if (!FUNC2(hapd_iface->conf->bss[0]->iface, buf)) {
			FUNC3(MSG_INFO, "Remove interface '%s'", buf);
			hapd_iface->driver_ap_teardown =
				!!(hapd_iface->drv_flags &
				   WPA_DRIVER_FLAGS_AP_TEARDOWN_SUPPORT);

			FUNC0(hapd_iface);
			k = i;
			while (k < (interfaces->count - 1)) {
				interfaces->iface[k] =
					interfaces->iface[k + 1];
				k++;
			}
			interfaces->count--;
			return 0;
		}

		for (j = 0; j < hapd_iface->conf->num_bss; j++) {
			if (!FUNC2(hapd_iface->conf->bss[j]->iface, buf)) {
				hapd_iface->driver_ap_teardown =
					!(hapd_iface->drv_flags &
					  WPA_DRIVER_FLAGS_AP_TEARDOWN_SUPPORT);
				return FUNC1(hapd_iface, j);
			}
		}
	}
	return -1;
}