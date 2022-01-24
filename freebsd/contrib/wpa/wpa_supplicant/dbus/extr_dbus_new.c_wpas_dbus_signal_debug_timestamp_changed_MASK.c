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
struct wpa_global {int /*<<< orphan*/  dbus; } ;

/* Variables and functions */
 int /*<<< orphan*/  WPAS_DBUS_NEW_INTERFACE ; 
 int /*<<< orphan*/  WPAS_DBUS_NEW_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

void FUNC1(struct wpa_global *global)
{
	FUNC0(global->dbus, WPAS_DBUS_NEW_PATH,
				       WPAS_DBUS_NEW_INTERFACE,
				       "DebugTimestamp");
}