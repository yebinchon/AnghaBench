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
typedef  int /*<<< orphan*/  DBusConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,char const*,struct wpa_dbus_object_desc const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,char const*,struct wpa_dbus_object_desc const*) ; 

__attribute__((used)) static void FUNC2(
	DBusConnection *con, const char *path, const char *interface,
	const struct wpa_dbus_object_desc *obj_dsc)
{
	/*
	 * First, send property change notification on the standardized
	 * org.freedesktop.DBus.Properties interface. This call will not
	 * clear the property change bits, so that they are preserved for
	 * the call that follows.
	 */
	FUNC1(con, path, interface, obj_dsc);

	/*
	 * Now send PropertiesChanged on our own interface for backwards
	 * compatibility. This is deprecated and will be removed in a future
	 * release.
	 */
	FUNC0(con, path, interface, obj_dsc);

	/* Property change bits have now been cleared. */
}