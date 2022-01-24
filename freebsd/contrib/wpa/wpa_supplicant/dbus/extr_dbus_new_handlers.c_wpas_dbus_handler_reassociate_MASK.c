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
struct wpa_supplicant {scalar_t__ wpa_state; } ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int /*<<< orphan*/  WPAS_DBUS_ERROR_IFACE_DISABLED ; 
 scalar_t__ WPA_INTERFACE_DISABLED ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*) ; 

DBusMessage * FUNC2(DBusMessage *message,
					    struct wpa_supplicant *wpa_s)
{
	if (wpa_s->wpa_state != WPA_INTERFACE_DISABLED) {
		FUNC1(wpa_s);
		return NULL;
	}

	return FUNC0(message, WPAS_DBUS_ERROR_IFACE_DISABLED,
				      "This interface is disabled");
}