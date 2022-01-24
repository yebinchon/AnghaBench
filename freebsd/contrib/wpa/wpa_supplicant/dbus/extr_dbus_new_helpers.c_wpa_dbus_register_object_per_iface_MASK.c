#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct wpas_dbus_priv {int /*<<< orphan*/ * con; } ;
struct wpa_dbus_object_desc {int /*<<< orphan*/  path; int /*<<< orphan*/ * connection; } ;
struct TYPE_8__ {int /*<<< orphan*/  message; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/ * member_5; int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ DBusObjectPathVTable ;
typedef  TYPE_2__ DBusError ;
typedef  int /*<<< orphan*/  DBusConnection ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_ERROR_OBJECT_PATH_IN_USE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,TYPE_1__*,struct wpa_dbus_object_desc*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  free_dbus_object_desc_cb ; 
 int /*<<< orphan*/  message_handler ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,...) ; 

int FUNC6(struct wpas_dbus_priv *ctrl_iface,
				       const char *path, const char *ifname,
				       struct wpa_dbus_object_desc *obj_desc)
{
	DBusConnection *con;
	DBusError error;
	DBusObjectPathVTable vtable = {
		&free_dbus_object_desc_cb, &message_handler,
		NULL, NULL, NULL, NULL
	};

	/* Do nothing if the control interface is not turned on */
	if (ctrl_iface == NULL)
		return 0;

	con = ctrl_iface->con;
	obj_desc->connection = con;
	obj_desc->path = FUNC4(path);

	FUNC2(&error);
	/* Register the message handler for the interface functions */
	if (!FUNC0(con, path, &vtable,
						      obj_desc, &error)) {
		if (FUNC3(error.name, DBUS_ERROR_OBJECT_PATH_IN_USE) == 0) {
			FUNC5(MSG_DEBUG, "dbus: %s", error.message);
		} else {
			FUNC5(MSG_ERROR,
				   "dbus: Could not set up message handler for interface %s object %s (error: %s message: %s)",
				   ifname, path, error.name, error.message);
		}
		FUNC1(&error);
		return -1;
	}

	FUNC1(&error);
	return 0;
}