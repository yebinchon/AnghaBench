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
typedef  int /*<<< orphan*/  DBusMessage ;
typedef  int /*<<< orphan*/  DBusHandlerResult ;
typedef  int /*<<< orphan*/  DBusConnection ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_ERROR_UNKNOWN_METHOD ; 
 int /*<<< orphan*/  DBUS_HANDLER_RESULT_HANDLED ; 
 int /*<<< orphan*/  DBUS_HANDLER_RESULT_NOT_YET_HANDLED ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  WPAS_DBUS_INTERFACE_MAX ; 
 int /*<<< orphan*/  WPAS_DBUS_METHOD_SIGNAL_PROP_MAX ; 
 int /*<<< orphan*/  WPA_DBUS_INTROSPECTION_INTERFACE ; 
 int /*<<< orphan*/  WPA_DBUS_INTROSPECTION_METHOD ; 
 int /*<<< orphan*/  WPA_DBUS_PROPERTIES_INTERFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,struct wpa_dbus_object_desc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,struct wpa_dbus_object_desc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,struct wpa_dbus_object_desc*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char const*,char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static DBusHandlerResult FUNC15(DBusConnection *connection,
					 DBusMessage *message, void *user_data)
{
	struct wpa_dbus_object_desc *obj_dsc = user_data;
	const char *method;
	const char *path;
	const char *msg_interface;
	DBusMessage *reply;

	/* get method, interface and path the message is addressed to */
	method = FUNC2(message);
	path = FUNC4(message);
	msg_interface = FUNC1(message);
	if (!method || !path || !msg_interface)
		return DBUS_HANDLER_RESULT_NOT_YET_HANDLED;

	FUNC14(MSG_MSGDUMP, "dbus: %s.%s (%s) [%s]",
		   msg_interface, method, path,
		   FUNC5(message));

	/* if message is introspection method call */
	if (!FUNC10(WPA_DBUS_INTROSPECTION_METHOD, method,
			WPAS_DBUS_METHOD_SIGNAL_PROP_MAX) &&
	    !FUNC10(WPA_DBUS_INTROSPECTION_INTERFACE, msg_interface,
			WPAS_DBUS_INTERFACE_MAX)) {
#ifdef CONFIG_CTRL_IFACE_DBUS_INTRO
		reply = wpa_dbus_introspect(message, obj_dsc);
#else /* CONFIG_CTRL_IFACE_DBUS_INTRO */
		reply = FUNC6(
			message, DBUS_ERROR_UNKNOWN_METHOD,
			"wpa_supplicant was compiled without introspection support.");
#endif /* CONFIG_CTRL_IFACE_DBUS_INTRO */
	} else if (!FUNC10(WPA_DBUS_PROPERTIES_INTERFACE, msg_interface,
			     WPAS_DBUS_INTERFACE_MAX)) {
		/* if message is properties method call */
		reply = FUNC11(message, obj_dsc);
	} else {
		reply = FUNC9(message, obj_dsc);
	}

	/* If handler succeed returning NULL, reply empty message */
	if (!reply)
		reply = FUNC7(message);
	if (reply) {
		if (!FUNC3(message))
			FUNC0(connection, reply, NULL);
		FUNC8(reply);
	}

	FUNC12(connection);

	return DBUS_HANDLER_RESULT_HANDLED;
}