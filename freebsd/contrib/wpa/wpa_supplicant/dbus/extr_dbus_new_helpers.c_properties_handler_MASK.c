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
struct wpa_dbus_object_desc {int dummy; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  DBUS_ERROR_UNKNOWN_METHOD ; 
 scalar_t__ DBUS_TYPE_STRING ; 
 int /*<<< orphan*/  WPAS_DBUS_METHOD_SIGNAL_PROP_MAX ; 
 int /*<<< orphan*/  WPA_DBUS_PROPERTIES_GET ; 
 int /*<<< orphan*/  WPA_DBUS_PROPERTIES_GETALL ; 
 int /*<<< orphan*/  WPA_DBUS_PROPERTIES_SET ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*,struct wpa_dbus_object_desc*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,struct wpa_dbus_object_desc*) ; 

__attribute__((used)) static DBusMessage * FUNC8(DBusMessage *message,
					struct wpa_dbus_object_desc *obj_dsc)
{
	DBusMessageIter iter;
	char *interface;
	const char *method;

	method = FUNC0(message);
	FUNC3(message, &iter);

	if (!FUNC5(WPA_DBUS_PROPERTIES_GET, method,
			WPAS_DBUS_METHOD_SIGNAL_PROP_MAX) ||
	    !FUNC5(WPA_DBUS_PROPERTIES_SET, method,
			WPAS_DBUS_METHOD_SIGNAL_PROP_MAX) ||
	    !FUNC5(WPA_DBUS_PROPERTIES_GETALL, method,
			WPAS_DBUS_METHOD_SIGNAL_PROP_MAX)) {
		/* First argument: interface name (DBUS_TYPE_STRING) */
		if (FUNC1(&iter) != DBUS_TYPE_STRING) {
			return FUNC4(message,
						      DBUS_ERROR_INVALID_ARGS,
						      NULL);
		}

		FUNC2(&iter, &interface);

		if (!FUNC5(WPA_DBUS_PROPERTIES_GETALL, method,
				WPAS_DBUS_METHOD_SIGNAL_PROP_MAX)) {
			/* GetAll */
			return FUNC6(message, interface, obj_dsc);
		}
		/* Get or Set */
		return FUNC7(message, &iter, interface,
					     obj_dsc);
	}
	return FUNC4(message, DBUS_ERROR_UNKNOWN_METHOD,
				      NULL);
}