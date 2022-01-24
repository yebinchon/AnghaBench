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
struct wpa_dbus_object_desc {int /*<<< orphan*/  user_data; struct wpa_dbus_method_desc* methods; } ;
struct wpa_dbus_method_desc {int /*<<< orphan*/ * (* method_handler ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * dbus_method; int /*<<< orphan*/ * dbus_interface; } ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  DBUS_ERROR_UNKNOWN_METHOD ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WPAS_DBUS_INTERFACE_MAX ; 
 int /*<<< orphan*/  WPAS_DBUS_METHOD_SIGNAL_PROP_MAX ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct wpa_dbus_method_desc const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static DBusMessage * FUNC8(DBusMessage *message,
					struct wpa_dbus_object_desc *obj_dsc)
{
	const struct wpa_dbus_method_desc *method_dsc = obj_dsc->methods;
	const char *method;
	const char *msg_interface;

	method = FUNC1(message);
	msg_interface = FUNC0(message);

	/* try match call to any registered method */
	while (method_dsc && method_dsc->dbus_method) {
		/* compare method names and interfaces */
		if (!FUNC5(method_dsc->dbus_method, method,
				WPAS_DBUS_METHOD_SIGNAL_PROP_MAX) &&
		    !FUNC5(method_dsc->dbus_interface, msg_interface,
				WPAS_DBUS_INTERFACE_MAX))
			break;

		method_dsc++;
	}
	if (method_dsc == NULL || method_dsc->dbus_method == NULL) {
		FUNC7(MSG_DEBUG, "no method handler for %s.%s on %s",
			   msg_interface, method,
			   FUNC2(message));
		return FUNC3(message,
					      DBUS_ERROR_UNKNOWN_METHOD, NULL);
	}

	if (!FUNC4(message, method_dsc)) {
		return FUNC3(message, DBUS_ERROR_INVALID_ARGS,
					      NULL);
	}

	return method_dsc->method_handler(message, obj_dsc->user_data);
}