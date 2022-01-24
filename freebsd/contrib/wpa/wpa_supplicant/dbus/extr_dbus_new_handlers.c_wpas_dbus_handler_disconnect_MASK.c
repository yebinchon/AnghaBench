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
struct wpa_supplicant {int /*<<< orphan*/ * current_ssid; } ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int /*<<< orphan*/  WPAS_DBUS_ERROR_NOT_CONNECTED ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*) ; 

DBusMessage * FUNC2(DBusMessage *message,
					   struct wpa_supplicant *wpa_s)
{
	if (wpa_s->current_ssid != NULL) {
		FUNC1(wpa_s);
		return NULL;
	}

	return FUNC0(message, WPAS_DBUS_ERROR_NOT_CONNECTED,
				      "This interface is not connected");
}