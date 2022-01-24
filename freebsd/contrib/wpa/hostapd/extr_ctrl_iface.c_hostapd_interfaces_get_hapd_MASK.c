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
struct hostapd_iface {size_t num_bss; struct hostapd_data** bss; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct hapd_interfaces {size_t count; struct hostapd_iface** iface; } ;
struct TYPE_2__ {int /*<<< orphan*/  iface; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct hostapd_data *
FUNC1(struct hapd_interfaces *interfaces,
			    const char *ifname)
{
	size_t i, j;

	for (i = 0; i < interfaces->count; i++) {
		struct hostapd_iface *iface = interfaces->iface[i];

		for (j = 0; j < iface->num_bss; j++) {
			struct hostapd_data *hapd;

			hapd = iface->bss[j];
			if (FUNC0(ifname, hapd->conf->iface) == 0)
				return hapd;
		}
	}

	return NULL;
}