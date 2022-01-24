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
struct wpa_supplicant {int /*<<< orphan*/ * dbus_groupobj_path; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef  int /*<<< orphan*/  dbus_bool_t ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusError ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_TYPE_OBJECT_PATH ; 
 int WPAS_DBUS_OBJECT_PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 

dbus_bool_t FUNC2(
	const struct wpa_dbus_property_desc *property_desc,
	DBusMessageIter *iter, DBusError *error, void *user_data)
{
	struct wpa_supplicant *wpa_s = user_data;
	char path_buf[WPAS_DBUS_OBJECT_PATH_MAX];
	char *dbus_groupobj_path = path_buf;

	if (wpa_s->dbus_groupobj_path == NULL)
		FUNC0(dbus_groupobj_path, WPAS_DBUS_OBJECT_PATH_MAX,
			    "/");
	else
		FUNC0(dbus_groupobj_path, WPAS_DBUS_OBJECT_PATH_MAX,
			    "%s", wpa_s->dbus_groupobj_path);

	return FUNC1(iter, DBUS_TYPE_OBJECT_PATH,
						&dbus_groupobj_path, error);
}