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
typedef  int /*<<< orphan*/  dbus_bool_t ;
struct TYPE_2__ {int /*<<< orphan*/ * p2p; scalar_t__ p2p_disabled; } ;
typedef  int /*<<< orphan*/  DBusMessage ;
typedef  int /*<<< orphan*/  DBusError ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_ERROR_FAILED ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static dbus_bool_t FUNC2(struct wpa_supplicant *wpa_s,
					      DBusMessage *message,
					      DBusMessage **out_reply,
					      DBusError *error)
{
	/* Return an error message or an error if P2P isn't available */
	if (wpa_s->global->p2p_disabled || wpa_s->global->p2p == NULL) {
		if (out_reply) {
			*out_reply = FUNC0(
				message, DBUS_ERROR_FAILED,
				"P2P is not available for this interface");
		}
		FUNC1(error, DBUS_ERROR_FAILED,
				     "P2P is not available for this interface");
		return FALSE;
	}
	return TRUE;
}