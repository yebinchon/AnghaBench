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
struct hostapd_iface {size_t num_bss; int /*<<< orphan*/ * bss; TYPE_2__* conf; } ;
struct TYPE_4__ {TYPE_1__** bss; } ;
struct TYPE_3__ {int /*<<< orphan*/  iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_iface*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC5(struct hostapd_iface *hapd_iface)
{
	size_t j;

	FUNC4(MSG_DEBUG, "Reload interface %s",
		   hapd_iface->conf->bss[0]->iface);
	for (j = 0; j < hapd_iface->num_bss; j++)
		FUNC3(hapd_iface->conf->bss[j], 1);
	if (FUNC1(hapd_iface->conf, 1) < 0) {
		FUNC4(MSG_ERROR, "Updated configuration is invalid");
		return -1;
	}
	FUNC0(hapd_iface);
	for (j = 0; j < hapd_iface->num_bss; j++)
		FUNC2(hapd_iface->bss[j]);

	return 0;
}