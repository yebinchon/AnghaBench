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
struct wpa_dbus_property_desc {int /*<<< orphan*/  dbus_interface; scalar_t__ dbus_property; } ;
struct wpa_dbus_object_desc {int /*<<< orphan*/ * prop_changed_flags; struct wpa_dbus_property_desc* properties; } ;
typedef  int /*<<< orphan*/  DBusConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct wpa_dbus_object_desc*) ; 
 int /*<<< orphan*/  flush_object_timeout_handler ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,struct wpa_dbus_object_desc*) ; 

void FUNC3(DBusConnection *con,
					      const char *path)
{
	struct wpa_dbus_object_desc *obj_desc = NULL;
	const struct wpa_dbus_property_desc *dsc;
	int i;

	FUNC0(con, path, (void **) &obj_desc);
	if (!obj_desc)
		return;
	FUNC1(flush_object_timeout_handler, con, obj_desc);

	for (dsc = obj_desc->properties, i = 0; dsc && dsc->dbus_property;
	     dsc++, i++) {
		if (obj_desc->prop_changed_flags == NULL ||
		    !obj_desc->prop_changed_flags[i])
			continue;
		FUNC2(con, path, dsc->dbus_interface,
					 obj_desc);
	}
}