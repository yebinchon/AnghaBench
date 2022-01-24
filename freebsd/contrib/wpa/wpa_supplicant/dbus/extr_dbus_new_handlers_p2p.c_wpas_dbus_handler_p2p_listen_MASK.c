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
struct wpa_supplicant {TYPE_1__* global; } ;
typedef  scalar_t__ dbus_int32_t ;
struct TYPE_2__ {struct wpa_supplicant* p2p_init_wpa_s; } ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_TYPE_INT32 ; 
 int /*<<< orphan*/  DBUS_TYPE_INVALID ; 
 int /*<<< orphan*/  WPAS_DBUS_ERROR_UNKNOWN_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct wpa_supplicant*,unsigned int) ; 

DBusMessage * FUNC4(DBusMessage *message,
					   struct wpa_supplicant *wpa_s)
{
	dbus_int32_t timeout = 0;

	if (!FUNC0(message, NULL, DBUS_TYPE_INT32, &timeout,
				   DBUS_TYPE_INVALID))
		return FUNC2(message);

	wpa_s = wpa_s->global->p2p_init_wpa_s;

	if (FUNC3(wpa_s, (unsigned int) timeout)) {
		return FUNC1(message,
					      WPAS_DBUS_ERROR_UNKNOWN_ERROR,
					      "Could not start P2P listen");
	}

	return NULL;
}